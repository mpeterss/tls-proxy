#!/bin/bash

echo "Starting TCP test"

echo "Waiting for connection....."

while true; do { echo -e 'Hello from TCP'; } | nc -l 3868; done