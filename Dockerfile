FROM gradle:7.6-jdk11

WORKDIR /app

COPY . .

RUN ./gradlew check

CMD ["./gradlew", "apprun"]
