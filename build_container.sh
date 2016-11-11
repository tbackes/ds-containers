#! /bin/bash

FOLDER=$1

docker build -t serviceds/$FOLDER-implisit -f $FOLDER/Dockerfile .
