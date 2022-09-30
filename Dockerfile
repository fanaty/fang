FROM debian:stable-20220912

RUN apt update

RUN apt install openvpn -y

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
