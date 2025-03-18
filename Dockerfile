FROM gradle:7.6.1-jdk11

WORKDIR /app

# Copy the project files to the container
COPY . .

# Make gradlew executable
RUN chmod +x gradlew

# Build the application
RUN ./gradlew build -x test

# Expose the port the app will run on
EXPOSE 8080

# Command to run the application
CMD ["./gradlew", "apprun"]
