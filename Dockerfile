# Use the official Gradle image with JDK 11 as the base image
FROM gradle:7.6.1-jdk11 AS build

# Set the working directory inside the container
WORKDIR /home/gradle/src

# Copy the project files into the container
COPY . .

# Build the project using Gradle
RUN gradle build --no-daemon

# Use a minimal JDK 11 runtime image for the application
FROM openjdk:11-jre-slim

# Set the working directory for the application
WORKDIR /app

# Copy the built application from the previous stage
COPY --from=build /home/gradle/src/build/libs/*.jar /app/app.jar

# Expose the port the application runs on
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
