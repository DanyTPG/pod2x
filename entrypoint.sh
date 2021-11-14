#!/bin/sh

#Config xray

rm -rf /etc/xray/config.json
cat << EOF > /etc/xray/config.json
{
  "inbounds": [
    {
      "port": $PORT,
      "protocol": "vless",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "$UUID"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "shadowsocks",
                  "settings": {
                        "servers": [
                                {
                                "address": "62.171.148.210",
                                "method": "chacha20-ietf-poly1305",
                                "ota": false,
                                "port": 443,
                                "password": "C9AQExkwClAg"
                                }
                        ]
            }
    }
  ]
}
EOF

#run xray

xray -c /etc/xray/config.json
