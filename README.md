# Java oom simulator on docker
This is a simple "Java oom simulator" aplication.
The application is running on a docker container and saving heap dump files under mounted directory on a host machine.
The docker image was created from openjdk:8-jre-alpine

## Usage
To compile a Java application and create a JAR file, please run:
```bash
./create-jar.sh
```

To create docker image and run it, please run:
```bash
./run.sh
```

