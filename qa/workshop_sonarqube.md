# Workshop #1 Goal: Run sonarqube with docker to analyze a python project

* WTF is SonarQube | https://docs.sonarqube.org/latest/
* Overview SonarScanner | https://docs.sonarqube.org/latest/analysis/overview/

## Set up SonarQube with Docker

The Server:
    https://hub.docker.com/_/sonarqube/

    docker pull sonarqube

run the instance

    docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest


## Configure the Repo manual on the Sonaqube server

Go to http://127.0.0.1:9000 Configure the password, create the project and the Token:


## Set up the Scanner with Docker

The scanner

    docker pull sonarsource/sonar-scanner-cli


Define some variable env / secret
    Lets find out the "IP" of the container with
    
    docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sonarqube

```
$ export SONAR_PROJECTKEY="test"
$ export SONARQUBE_URL=< IP >:9000
$ export TOKEN=0a8592ea4b3a2a7f6976cb20cca4a32506792279
$ export YOUR_REPO=/home/pipo/repos/personal/workshop_chalice/workshop-intro
```

run the scanner

    docker run \
        --rm \
        -e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
        -e SONAR_LOGIN="${TOKEN}" \
        -e SONAR_PROJECTKEY"${SONAR_PROJECTKEY}" \
        -v "${YOUR_REPO}:/usr/src" \
        sonarsource/sonar-scanner-cli -X -Dsonar.projectKey=${SONAR_PROJECT_KEY}


lets use -X to see the full log


Now, we are able to analyze the project.


# Workshop #2 Goal: Run sonarqube with docker to analyze a Github repo / Org

## Configure your Github app
log in github and go to
Settings > Developer .. > Github apps > New

https://github.com/settings/apps/new

You can configure that according
https://docs.github.com/en/developers/apps/building-github-apps/creating-a-github-app


####  Whats next

If it runs on Docker.... it runs on Github Actions :P

Next > Github Actions with Sonarqube for the CI/CD
github-integration/#analyzing-projects-with-github-actions


#### References

https://docs.sonarqube.org/latest/setup/get-started-2-minutes/

Github Apps
https://docs.github.com/en/developers/apps/building-github-apps/creating-a-github-app


Docker Hub
https://hub.docker.com/r/sonarsource/sonar-scanner-cli


Workaround for the IP issue
https://github.com/luisaveiro/localhost-sonarqube/issues/5
