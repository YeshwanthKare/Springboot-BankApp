# ------------ Stage 1 --------------- #
FROM maven:3.9.6-eclipse-temurin-17 AS builder

WORKDIR /src
COPY . .
RUN mvn clean install -DskipTests=true

# ------------- Stage 2 -------------- #
FROM eclipse-temurin:17-jdk AS runtime  

COPY --from=builder /src/target/*.jar /src/target/bankapp.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/src/target/bankapp.jar"]
