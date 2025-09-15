FROM maven:3.6.3 as builder
WORKDIR /app
COPY . /app/
RUN mvn clean install

FROM tomcat:9.0.84
WORKDIR /app
COPY --from=builder /app/target/onlinebookstore.war /opt/tomcat/webapps/
EXPOSE 8080
