#!/bin/sh

#Config xray

rm -rf /etc/xray/config.json
cat << EOF > /etc/xray/config.json
{
	"log": {
	"loglevel": "none"
	},
  "inbounds": [
    {
	  "tag": "in-vm",
	  "port": 80,
	  "protocol": "vmess",
	  "settings": {
		"decryption": "none",
		"clients": [
		  {
			"id": "a3f7a9ba-a802-4a22-a5a6-56105e4e41e4",
			"alterId": 4,
			"level": 0
		  }
		]
	  },
		"streamSettings": {
			"network": "ws",
			"security": "none",
			"wsSettings": {
				"path": "/prvm"
			}
		},
		"disableInsecureEncryption": true
	},
	{
	  "tag": "in-vm-nobal",
	  "port": 80,
	  "protocol": "vmess",
	  "settings": {
		"decryption": "none",
		"clients": [
		  {
			"id": "a3f7a9ba-a802-4a22-a5a6-56105e4e41e4",
			"alterId": 4,
			"level": 0
		  }
		]
	  },
		"streamSettings": {
			"network": "ws",
			"security": "none",
			"wsSettings": {
				"path": "/prvm2"
			}
		},
		"disableInsecureEncryption": true
	},
	{
	  "tag": "in-vl",
	  "port": 80,
	  "protocol": "vless",
	  "settings": {
		"decryption": "none",
		"clients": [
		  {
			"id": "369fa0e0-8ec5-41d2-92ea-6edbe93f7b60"
		  }
		]
	  },
	  "streamSettings": {
		"network": "ws",
		"security": "none",
		"wsSettings": {
                    "path": "/pr"
                }
	    }
	},
	{
      "tag": "in-direct",
	  "port": 80,
	  "protocol": "vless",
	  "settings": {
		"decryption": "none",
		"clients": [
		  {
			"id": "e7bd2ac7-f359-4e14-8aaa-7d32372f0653"
		  }
		]
	  },
	  "streamSettings": {
		"network": "ws",
		"security": "none",
		"wsSettings": {
                    "path": "/dr"
                }
		}
	}
  ],
  "outbounds": [
	{
		  "tag": "out-ss1",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.7",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 7307,
				"password": "FoOiGlkAA9yPEGP"
				}
			]
		}
	},
	{
		  "tag": "out-ss2",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.149",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 7306,
				"password": "FoOiGlkAA9yPEGP"
				}
			]
		}
	},
	{
		  "tag": "out-ss3",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.35",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 7306,
				"password": "PCnnH6SQSnfoS27"
				}
			]
		}
	},
	{
		  "tag": "out-ss4", 
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "35.177.29.114",
				"method": "chacha20-ietf-poly1305",
				"ota": false,
				"port": 812,
				"password": "G!yBwPWH3Vao"
				}
			]
		}
	},
	{
		  "tag": "out-ss5", //UFO London 5
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "92.223.59.188",
				"method": "chacha20-ietf-poly1305",
				"ota": false,
				"port": 812,
				"password": "G!yBwPWH3Vao"
				}
			]
		}
	},
	{
		  "tag": "out-ss6",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.153",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 8090,
				"password": "PCnnH6SQSnfoS27"
				}
			]
		}
	},
	{
		  "tag": "out-ss7",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.235",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 8882,
				"password": "kDWvXYZoTBcGkC4"
				}
			]
		}
	},
	{
		  "tag": "out-ss8",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.170",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 8080,
				"password": "KixLvKzwjekG00rm"
				}
			]
		}
	},
	{
		  "tag": "out-ss9",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.153",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 443,
				"password": "pKEW8JPByTVTLtM"
				}
			]
		}
	},
	{
		  "tag": "out-ss10",
		  "protocol": "shadowsocks",
		  "settings": {
			"servers": [
				{
				"address": "172.99.190.167",
				"method": "aes-256-gcm",
				"ota": false,
				"port": 3389,
				"password": "Y6R9pAtvxxzmGC"
				}
			]
		}
	},
	{
      "tag": "out-direct",
      "protocol": "freedom",
      "settings": {}
    }
  ],
    "routing": {
    "domainStrategy": "AsIs",
    "rules": [
      {
        "type": "field",
        "inboundTag": "in-direct",
        "outboundTag": "out-direct"
      },
      {
        "type": "field",
		"inboundTag": "in-vl",
        "balancerTag": "balancer"
      },
	  {
        "type": "field",
		"inboundTag": "in-vm",
        "balancerTag": "balancer"
      },
	  {
        "type": "field",
		"inboundTag": "in-vm-nobal",
        "outboundTag": "out-ss10"
      }
    ],
	 "balancers": [
		{
			"tag": "balancer",
			"selector": ["out-ss"],
			"strategy": {
			  "type": "leastPing"
			}
		}
	 ]
  }
}
EOF

#run xray

xray -c /etc/xray/config.json
