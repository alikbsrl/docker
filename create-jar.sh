#!/bin/bash

javac -d . app/SimulateOutOfMemory.java
jar cvf SimulateOutOfMemory.jar test/oom/SimulateOutOfMemory.class
jar cvmf app/MANIFEST.MF SimulateOutOfMemory.jar test/oom/SimulateOutOfMemory.class
rm -rf test
