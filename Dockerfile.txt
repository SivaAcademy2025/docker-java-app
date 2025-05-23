# Use OpenJDK image
FROM openjdk:11
# Copy Java source file
COPY src/HelloWorld.java /usr/src/myapp/
# Set working directory
WORKDIR /usr/src/myapp
# Compile Java file
RUN javac HelloWorld.java
# Run the program
CMD ["java", "HelloWorld"]
