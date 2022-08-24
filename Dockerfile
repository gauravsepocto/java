FROM ubuntu:latest
WORKDIR /app
COPY . .
RUN  apt-get update &&  apt install maven -y 
RUN mvn clean package
WORKDIR /app/target
EXPOSE 8080
CMD ["java", "-jar", "sample-0.0.1-SNAPSHOT.jar"]
