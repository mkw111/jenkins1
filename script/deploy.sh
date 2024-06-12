#!/bin/bash

# 현재 실행 중인 JenkinsTest-0.0.1-SNAPSHOT.jar 프로세스 종료
echo "Stopping current JenkinsTest-0.0.1-SNAPSHOT.jar process..."
pkill -f 'java -jar JenkinsTest-0.0.1-SNAPSHOT.jar'

pwd

# 잠시 대기 (필요 시 조정)
#sleep 5

# 새로운 JenkinsTest-0.0.1-SNAPSHOT.jar 프로세스 시작
echo "Starting new JenkinsTest-0.0.1-SNAPSHOT.jar process..."
nohup java -jar /home/ubuntu/JenkinsTest-0.0.1-SNAPSHOT.jar > /home/ubuntu/logfile.log 2>&1 &

echo "Deployment completed!"
