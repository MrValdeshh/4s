FROM teddysun/v2ray:latest

LABEL maintainer="MrValdez"
LABEL description="V2Ray container with VLESS, VMess, Trojan (WS on 8080) + Shadowsocks (8388)"
LABEL version="1.1"

# Expose ports
EXPOSE 8080
EXPOSE 8388

# Copy config
COPY config.json /etc/v2ray/config.json

# Run V2Ray
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
