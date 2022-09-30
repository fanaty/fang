# Docker Openvpn Client

### Build the client image

```
docker build -t test-base .
```

### Build your image

Please use CMD to run the base entrypoint of openvpn client.

```
FROM fanaty/fang

CMD [ "echo", "test" ]
```

### Run

To run the image mount the openvpn client file to /etc/openvpn

```
docker run -it --rm --cap-add=NET_ADMIN --device /dev/net/tun \
-v $(pwd)/test-new-client.ovpn:/etc/openvpn/client.ovpn:ro test
```

## Deploy

```
docker build -t fanaty/fang:tagname .
docker push fanaty/fang:tagname
```
