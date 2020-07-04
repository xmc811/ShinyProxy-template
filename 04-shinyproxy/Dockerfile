FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/
COPY shinyproxy-2.3.0.jar /opt/shinyproxy/shinyproxy.jar
COPY application.yml /opt/shinyproxy/application.yml

WORKDIR /opt/shinyproxy/
CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
