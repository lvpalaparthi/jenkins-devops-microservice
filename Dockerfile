# FROM openjdk:8-jdk-alpine
# VOLUME /tmp
# EXPOSE 8000
# ADD target/*.jar app.jar
# ENV JAVA_OPTS=""
# RUN echo "hello world"
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]


#This is a sample Image 
FROM ubuntu:latest 
LABEL maintainer="lvpalaparthi@gmail.com"
EXPOSE 8000
RUN apt-get update 
RUN echo "hello world"
CMD [“echo”,”Image created”] 