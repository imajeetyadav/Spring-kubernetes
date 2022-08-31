FROM gradle:jdk17-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build -x test --no-daemon

#FROM  amazoncorretto:17.0.4
FROM openjdk:17-jdk-alpine
COPY --from=build /home/gradle/src/build/libs/kubernetes-*-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]