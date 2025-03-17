FROM gradle:7.6.1-jdk11

WORKDIR /app

# Copy project files
COPY . .

# Build the project
RUN ./gradlew build

# Expose the port for the app
EXPOSE 8080

# Run the application
CMD ["./gradlew", "apprun"]
