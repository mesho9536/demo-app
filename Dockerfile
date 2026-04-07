FROM eclipse-temurin:25

WORKDIR /app

COPY target/devops-integration.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
