#!/bin/bash

# Start openvpn client
openvpn --config /etc/openvpn/client.ovpn &

# Execute child CMD
exec "$@"
