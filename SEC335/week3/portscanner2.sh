#!/bin/bash

ip=$1
port=$2

echo "ip,port"

for i in $(seq 0 254); do
    timeout .1 bash -c "echo >/dev/tcp/$ip.$i/$port" 2>/dev/null &&
      echo "$ip.$i,$port"
done
