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
## Details
The java.sh script contains two functions:
- start - this function is starting java app
- logr - this function is rotating java heap dump log files

To change log file format, please edit "logf" variable in java.sh file
To change log folder max size, please edit "maxdirsize" variable in java.sh file (default value 10G).
