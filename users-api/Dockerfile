FROM maven:3.8-eclipse-temurin-11 AS builder
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean install -DskipTests

FROM eclipse-temurin:11-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/users-api-*.jar app.jar
EXPOSE 8083
CMD ["java", "-jar", "app.jar"]