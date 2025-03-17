# Use a specific Gradle and JDK version for consistency.
FROM gradle:7.6.1-jdk11

# Set the working directory inside the container.
WORKDIR /app

# Copy all project files into the container's working directory.
# This ensures all source code, Gradle wrappers, and build configurations are available.
COPY . .

# Build the Gradle project.
# Using --no-daemon prevents potential issues with daemon processes in Docker.
# Using --info provides verbose output for debugging.
RUN ./gradlew --no-daemon --info build

# Expose the port that the application will be listening on.
# This informs Docker that the application uses port 8080.
EXPOSE 8080

# Command to run the application.
# Using --no-daemon is recommended, as with the build command.
# "apprun" is assumed to be a Gradle task that starts the application.
CMD ["./gradlew", "--no-daemon", "apprun"]
