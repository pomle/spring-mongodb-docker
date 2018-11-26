FROM maven:3.6.0-jdk-10

RUN mkdir /app
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn package

ENTRYPOINT ["java", "-jar", "target/rest-api-0.1.0.jar"]
