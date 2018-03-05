#!/bin/bash
networkPartitionVar=$(rabbitmqctl cluster_status | grep partitions | awk -F'[][]' '{print $2}')

if [ -z "$networkPartitionVar" ]; 
  then
    exit 0
  else
    echo "network partition detected on $(date)" >> /tmp/networkpartitionlog.txt
fi
