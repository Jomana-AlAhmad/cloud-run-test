
# Use the official maven/Java 8 image to create a build artifact.
# https://hub.docker.com/_/maven
#FROM gradle:jdk10 as builder
#
#ENV APP_HOME=/usr/app/
#WORKDIR $APP_HOME
#
#COPY --chown=gradle:gradle . $APP_HOME
#RUN ls
#COPY build.gradle $APP_HOME
#
#RUN gradle build || return 0
#COPY . .
#RUN gradle build
# Use AdoptOpenJDK for base image.
# It's important to use OpenJDK 8u191 or above that has container support enabled.
# https://hub.docker.com/r/adoptopenjdk/openjdk8
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
FROM adoptopenjdk/openjdk8:jdk8u202-b08-alpine-slim

# Copy the jar to the production image from the builder stage.
RUN ls
COPY  /jar/build/libs/helloworld.jar /helloworld.jar

# Run the web service on container startup.
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/helloworld.jar"]