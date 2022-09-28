#!/bin/bash

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -d|--desk) desk="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

echo "Where to deploy: $desk"



kafkacat -C -b $url -e -t $topic
-X sasl.mechanism=SCRAM-SHA-512
-X security.protocol=SASL_SSL
-X sasl.username=login
-X sasl.password=pass
