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

The scanner | 
https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/

    docker pull sonarsource/sonar-scanner-cli


Define some variable env / secret
    Lets find out the "IP" of the container with
    
    docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sonarqube

```
$ export SONAR_PROJECT_KEY="test"
$ export SONARQUBE_URL=< IP >:9000
$ export TOKEN=< YOUR TOKEN >
$ export YOUR_REPO=/home/pipo/repos/workshop_sonarqube
```

run the scanner

    docker run \
        --rm \
        -e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
        -e SONAR_LOGIN="${TOKEN}" \
        -e SONAR_PROJECTKEY"${SONAR_PROJECT_KEY}" \
        -v "${YOUR_REPO}:/usr/src" \
        sonarsource/sonar-scanner-cli -X -Dsonar.projectKey=${SONAR_PROJECT_KEY}


lets use -X to see the full log

Now, we are able to analyze the project, lets go to view the report | http://127.0.0.1:9000/projects

Lets introduce some code smells in your dummy python code.
Now lets clone https://github.com/sobolevn/python-code-disasters and run some analysis

It Works!

### Its the time Kahoot, get your katana ready


# Workshop #2 Goal: Run sonarqube with docker to analyze a Github repo / Org

## Configure your Github app

http://localhost:9000/documentation/analysis/github-integration/#importing-your-github-repositories-to-sonarqube

log in github and go to
Settings > Developer .. > Github apps > New

https://github.com/settings/apps/new

You can configure that according
https://docs.github.com/en/developers/apps/building-github-apps/creating-a-github-app


####  Whats next

If it runs on Docker.... it runs on Github Actions, and under Kubernetes :P

Next > Github Actions with Sonarqube for the CI/CD
github-integration/#analyzing-projects-with-github-actions
