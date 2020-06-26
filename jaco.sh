#!/bin/bash

########################################################################
# Script to compile Java class and run it afterwards
# Set simlink in /usr/local/bin for global use
########################################################################

name=$1
# check if the parameter is a .java file and change the name
# accordingly
if [[ $name == *".java"* ]]
  then
    programName=${name%.java}
  else
    programName=$name
fi
javac $programName.java
java $programName  
