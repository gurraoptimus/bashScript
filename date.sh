#!/bin/bash

name=$1
comapliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good Night $name!!"
sleep 1
echo "See you tomorrow $name!!"
sleep 1

echo "you are currently logged in as $user and you are in the directory $whereami. Also today is: $date"
