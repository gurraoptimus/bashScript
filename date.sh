#!/bin/bash

name=$1
comapliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo"what is your name"
read name

echo "Good Morning $name!!"
sleep 1
echo " you're looking good today $name!!"
sleep 1
echo "you have the best $comapliment I've ever seen $name!!"
sleep 2

echo "you are currently logged in as $user and you are in the directory $whereami. Also today is: $date"
