# Building application
FROM gradle:7.6-jdk11 AS builder
WORKDIR /home/gradle/app
COPY . . 
RUN gradle build --no-daemon

FROM openjdk:8-jre-alpine
WORKDIR /app

COPY --from=builder /home/gradle/app/build/libs/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]