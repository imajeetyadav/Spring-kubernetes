FROM openjdk:17-jdk
COPY build/libs/kubernetes-*-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]