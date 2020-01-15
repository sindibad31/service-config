FROM openjdk:8-jdk-alpine
RUN mkdir -p /cloud-conf
#COPY cloud-conf/ /cloud-conf/
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
