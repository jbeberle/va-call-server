# FROM maven:3.8.3-openjdk-17
FROM harbor-repo.vmware.com/dockerhub-proxy-cache/maven:3.9-eclipse-temurin-17

WORKDIR /app
VOLUME /tmp
COPY pom.xml .
RUN mvn dependency:go-offline
# Copies the source files
COPY ./src ./src
RUN mvn package -DskipTests=true
COPY target/va-call-server-0.0.1-SNAPSHOT.jar /app/target/va-call-server-0.0.1-SNAPSHOT.jar
COPY target/va-call-server-0.0.1-SNAPSHOT.jar /app/va-call-server-0.0.1-SNAPSHOT.jar
COPY h2-2.1.210.jar /app
RUN java -cp /app/h2*.jar org.h2.tools.RunScript -url jdbc:h2:/app/vacall -script /app/src/main/resources/create.sql -user sa -password password
EXPOSE 8088
ARG JAR_FILE=target/va-call-server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} va-call-server.jar
ENTRYPOINT ["java","-jar","/app/va-call-server.jar"]