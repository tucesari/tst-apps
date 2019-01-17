#FROM openjdk:8-jdk-alpine
#COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
#VOLUME /tmp
#ARG DEPENDENCY=target/dependency

FROM java:8
VOLUME /tmp
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]