# Use Gradle with JDK 11 as the base image
FROM gradle:7.6.1-jdk11

# Set the working directory inside the container
WORKDIR /app

# Copy everything into the container
COPY . .

# Give execute permission to the Gradle wrapper
RUN chmod +x gradlew

# Build the project using Gradle
RUN ./gradlew build --no-daemon

# Expose port 8080 for the web application
EXPOSE 8080

# Start the application and keep the container running
CMD ["./gradlew", "apprun"]
