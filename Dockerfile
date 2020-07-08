# getting java base image
FROM openjdk:8-jdk-alpine AS JAVA_BUILD_DOCKER

MAINTAINER Nitin Kumar <sun.nitin02@gmail.com>

COPY grid.java /var/

COPY lib /var/lib/

WORKDIR /var/

RUN javac -d . -cp "./:./lib/*" grid.java

ENTRYPOINT ["java","-cp","./:./lib/*","grid"]
