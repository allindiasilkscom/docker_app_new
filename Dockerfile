#FROM maven:3.8.1-openjdk-22-slim as build
#WORKDIR /app
#COPY pom.xml .
#COPY . .
#RUN mvn clean package -DskipTests

FROM eclipse-temurin:22-jdk-alpine
WORKDIR /app
COPY target/CRUD-0.0.1-SNAPSHOT.jar CRUD-0.0.1-SNAPSHOT.jar
EXPOSE 5000
CMD ["java","-jar","CRUD-0.0.1-SNAPSHOT.jar"]
