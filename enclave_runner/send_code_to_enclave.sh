#!/bin/bash

cd /home/ec2-user/dev/aws-nitro-enclaves-samples/enclave_runner/socket_tester
python3 socket_server.py &
sleep 5
curl -X POST -F "file=@/home/ec2-user/dev/aws-nitro-enclaves-samples/enclave_runner/tester_enclave_runner"  https://ec2-3-70-8-55.eu-central-1.compute.amazonaws.com:5000/api/execute_interceptor


