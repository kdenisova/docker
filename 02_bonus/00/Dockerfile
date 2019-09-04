FROM openjdk
COPY /java /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]

# docker build -t bonus00 .
# docker run --rm bonus00