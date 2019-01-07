FROM openjdk:8-jre-alpine
COPY SimulateOutOfMemoryError.jar /SimulateOutOfMemoryError.jar
COPY java.sh /usr/local/bin/java.sh
CMD ["java.sh", "start"]
