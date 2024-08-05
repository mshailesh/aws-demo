#!/bin/bash
# Install Java if not installed
if ! type java > /dev/null 2>&1; then
  apt-get update
  apt-get install -y openjdk-11-jdk
fi

# Copy the JAR file to the appropriate location
cp /home/ubuntu/app/build-output.jar /home/ubuntu/app/myapp.jar

# Run the JAR file
nohup java -jar /home/ubuntu/app/myapp.jar > /home/ubuntu/app/app.log 2>&1 &
