# Stage 1: Build - Using Gradle with JDK 11 to compile the application
FROM gradle:7.6.1-jdk11 AS builder

# Set the working directory
WORKDIR /app

# Copy the build files
COPY build.gradle .
COPY src ./src

# Build the application
RUN gradle clean build --no-daemon

# Stage 2: Run - Using a minimal JRE image to run the application
FROM eclipse-temurin:11-jre

# Set the working directory
WORKDIR /app

# Copy the built JAR file from the builder stage
COPY --from=builder /app/build/libs/*.jar app.jar

# Expose the port your application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]