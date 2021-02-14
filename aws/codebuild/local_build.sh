#!/bin/sh

cd /LocalBuild/agent-resources

if [ $IS_INNER_CONTAINER == true ]
then
    if [ ! -z "${BUILDSPEC_PATH}" ]
    then
        RELATIVE_PATH=${BUILDSPEC_PATH}
        if [[ ${BUILDSPEC_PATH} = *"$SOURCE_PATH"* ]]
        then
            TEMP=${BUILDSPEC_PATH#$SOURCE_PATH}
            RELATIVE_PATH=${TEMP#"/"}
        fi
        echo ${RELATIVE_PATH} > /codebuild/input/buildspec.yml
    fi
    touch /codebuild/output/log
    tail -F /codebuild/output/log &
    sh ./start > /dev/null
else
    if [ -z "${LOCAL_AGENT_IMAGE_NAME}" ]
    then
        LOCAL_AGENT_IMAGE_NAME="amazon/aws-codebuild-local:latest"
    fi

    if [ -z "${DOCKER_PRIVILEGED_MODE}" ]
    then
        export BUILD_CONTAINER_PRIVILEGED_MODE=false
    else
        export BUILD_CONTAINER_PRIVILEGED_MODE=true
    fi

    export LOCAL_AGENT_IMAGE=${LOCAL_AGENT_IMAGE_NAME}
    export CODEBUILD_LOCAL_SOURCE_DIRECTORY=${SOURCE}
    export IMAGE_FOR_CODEBUILD_LOCAL_BUILD=${IMAGE_NAME}
    export CODEBUILD_LOCAL_ARTIFACTS_DIRECTORY=${ARTIFACTS}
    export CODEBUILD_LOCAL_REPORTS_DIRECTORY=${REPORTS}
    export CODEBUILD_LOCAL_BUILDSPEC_PATH=${BUILDSPEC}
    export CODEBUILD_LOCAL_INITIATOR=${INITIATOR}

    if [ "${MOUNT_SOURCE_DIRECTORY}" != "TRUE" ]
    then
        cp docker-compose.yml customer-specific.yml
        export CODEBUILD_MOUNT_SRC_DIR=false
    else
        cp docker-compose-mount-src-dir.yml customer-specific.yml
        export CODEBUILD_MOUNT_SRC_DIR=true
    fi

    if [ -n "${CODEBUILD_LOCAL_REPORTS_DIRECTORY}" ]
    then
      /LocalBuild/agent-resources/bin/edit-docker-compose ${CODEBUILD_LOCAL_REPORTS_DIRECTORY} /LocalBuild/agent-resources/customer-specific.yml "LocalReportsDir"
    fi

    if [ ! -z "${SECONDARY_SOURCE_1}" ]
    then
        printenv | grep SECONDARY_SOURCE_ > secondarysources.txt
        if [ "${MOUNT_SOURCE_DIRECTORY}" != "TRUE" ]
        then
            /LocalBuild/agent-resources/bin/edit-docker-compose secondarysources.txt /LocalBuild/agent-resources/customer-specific.yml "SecondarySources"
        else
            /LocalBuild/agent-resources/bin/edit-docker-compose secondarysources.txt /LocalBuild/agent-resources/customer-specific.yml "SecondarySourcesMount"
        fi
    fi

    # Environment variable file has precedent over AWS Configuration. Any AWS config variables in both the customers local space
    # and their environment variable file will receive the value from the file. This is maintained by ensuring that we set the
    # file variables after we set up the customers AWS Configuration.
    if [ ! -z "${AWS_CONFIGURATION}" ]
    then
        if [[ "$AWS_CONFIGURATION" = *".aws"* ]]
        then
            /LocalBuild/agent-resources/bin/edit-docker-compose ${AWS_CONFIGURATION} /LocalBuild/agent-resources/customer-specific.yml "AWSConfiguration"
        fi

        if [ ! -z "${AWS_SHARED_CREDENTIALS_FILE}" ]
        then
          if [[ "$AWS_SHARED_CREDENTIALS_FILE" = *"credentials" ]]
          then
            /LocalBuild/agent-resources/bin/edit-docker-compose ${AWS_SHARED_CREDENTIALS_FILE} /LocalBuild/agent-resources/customer-specific.yml "AWSSharedCredentialsFile"
            export AWS_SHARED_CREDENTIALS_FILE="/new/.aws/credentials"
          fi
        fi

        if [ ! -z "${AWS_CONFIG_FILE}" ]
        then
          if [[ "$AWS_CONFIG_FILE" = *"config" ]]
          then
            /LocalBuild/agent-resources/bin/edit-docker-compose ${AWS_CONFIG_FILE} /LocalBuild/agent-resources/customer-specific.yml "AWSSharedConfigFile"
            export AWS_CONFIG_FILE="/new/.aws/config"
          fi
        fi

        printenv | grep -v AWS_CONFIGURATION | grep ^AWS_ > awsconfig.txt
        /LocalBuild/agent-resources/bin/edit-docker-compose awsconfig.txt /LocalBuild/agent-resources/customer-specific.yml "EnvironmentVariables"
    fi

    if [ ! -z "${ENV_VAR_FILE}" ]
    then
        /LocalBuild/agent-resources/bin/edit-docker-compose /LocalBuild/envFile/$ENV_VAR_FILE /LocalBuild/agent-resources/customer-specific.yml "EnvironmentVariables"
    fi

    # Validate docker-compose config
    docker-compose -f customer-specific.yml config --quiet || exit 1

    # Clean up any previous runs
    docker-compose -f customer-specific.yml down -v

    # Start
    docker-compose -f customer-specific.yml up --abort-on-container-exit | tee build_logs
    if grep -q "Phase complete: [A-Z_]* State: FAILED" build_logs
    then
        exit 1
    else
        exit 0
    fi

fi
