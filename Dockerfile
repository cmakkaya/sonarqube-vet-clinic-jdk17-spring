FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
# ENV SPRING_PROFILES_ACTIVE docker,mysql
ENTRYPOINT ["java", "-jar", "app.jar"]
