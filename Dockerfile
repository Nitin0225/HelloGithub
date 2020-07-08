# getting java base image
FROM openjdk:8-jdk-alpine AS JAVA_BUILD_DOCKER

MAINTAINER Nitin Kumar <sun.nitin02@gmail.com>

COPY /c/Users/ba35928/Documents/ADS/DataFiles/DockerDemoWithJar/src/DemoDocker/grid.java /var/

COPY /c/Users/ba35928/Documents/ADS/DataFiles/DockerDemoWithJar/src/DemoDocker/lib /var/lib/

WORKDIR /var/

RUN javac -d . -cp "./:./lib/*" grid.java

ENTRYPOINT ["java","-cp","./:./lib/*","grid"]
