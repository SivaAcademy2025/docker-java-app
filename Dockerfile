# Use OpenJDK 11 base image
FROM openjdk:11

# Copy the Java source file to the container
COPY src/HelloWorld.java /usr/src/myapp/

# Set working directory inside the container
WORKDIR /usr/src/myapp

# Compile the Java source code
RUN javac HelloWorld.java

# Run the Java program when the container starts
CMD ["java", "HelloWorld"]
