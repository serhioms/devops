#!/bin/bash

nohup mvn compile exec:java -Dexec.mainClass="helloworkflow.SayHelloWorker" > worker.log 2>&1 &
nohup mvn compile exec:java -Dexec.mainClass="helloworkflow.Starter" > starter.log 2>&1 &

