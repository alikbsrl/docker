FROM openjdk:8-jre-alpine
COPY SimulateOutOfMemory.jar /SimulateOutOfMemory.jar
COPY java.sh /usr/local/bin/java.sh
CMD ["java.sh", "start"]
