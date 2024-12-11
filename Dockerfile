# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Make port 8080 available to the world outside the container
EXPOSE 8083

# Run the application
ENTRYPOINT ["java", "-jar", "demo.jar"]