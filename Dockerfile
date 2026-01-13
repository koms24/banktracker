# --- Stage 1: Build ---
FROM eclipse-temurin:17-jdk AS build
WORKDIR /app

# Install dos2unix to fix potential script issues on the Pi
RUN apt-get update && apt-get install -y dos2unix

# Copy everything
COPY . .

# Fix line endings for the gradle wrapper and make it executable
RUN dos2unix gradlew && chmod +x gradlew

# Run the build (this generates the Plaid client and builds the JAR)
# We use --no-daemon to save RAM on the Raspberry Pi
RUN ./gradlew bootJar --no-daemon

# --- Stage 2: Run ---
FROM eclipse-temurin:17-jre
WORKDIR /opt/fpc

# Copy the built jar from the build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Standard Spring Boot entrypoint
ENTRYPOINT ["java", "-jar", "app.jar"]