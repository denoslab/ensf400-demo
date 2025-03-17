# Use an appropriate base image, e.g., for a Gradle-based project:
    FROM openjdk:11-jdk-slim

    # Set the working directory inside the container
    WORKDIR /app
    
    # Copy all files from the desktop_app folder into the container’s /app directory
    COPY desktop_app/ /app/
    
    # Install Gradle (if it's not already installed in your base image)
    RUN apt-get update && apt-get install -y gradle
    
    # Run the application with Gradle
    CMD ["./gradlew", "startui"]