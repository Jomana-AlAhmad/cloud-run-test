
# Use the official maven/Java 8 image to create a build artifact.
# https://hub.docker.com/_/maven
#FROM gradle:jdk8 as builder

#RUN mkdir -p /
#WORKDIR /
#COPY gradle /gradle
#COPY build.gradle settings.gradle gradlew /
#COPY application /application
#WORKDIR /application
#RUN ../gradlew build || return 0
#COPY . .
#RUN ../gradlew build

# Use AdoptOpenJDK for base image.
# It's important to use OpenJDK 8u191 or above that has container support enabled.
# https://hub.docker.com/r/adoptopenjdk/openjdk8
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
FROM adoptopenjdk/openjdk8:jdk8u202-b08-alpine-slim

# Copy the jar to the production image from the builder stage.
COPY /build/libs/application.jar /application.jar

# Run the web service on container startup.
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/helloworld.jar"]