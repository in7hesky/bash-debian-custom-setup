#!/bin/bash

apt update -y && apt upgrade -y

apt install nano -y

echo "Hello World" > hello.txt

