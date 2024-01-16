#!/bin/sh

ip addr add 127.0.0.1/32 dev lo
ip link set dev lo up

socat tcp-listen:7000,reuseaddr,fork vsock-connect:2:6000 &

./tester_socket3
