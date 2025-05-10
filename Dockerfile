# Use a base image with Java installed
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY Test.java .

# Compile the Java code
RUN javac Test.java

# Command to run when the container starts
CMD ["java", "Test"]