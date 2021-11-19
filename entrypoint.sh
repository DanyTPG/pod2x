#!/bin/sh

#Config xray

rm -rf /etc/xray/config.json
cat << EOF > /etc/xray/config.json
$cn
EOF

#run xray

xray -c /etc/xray/config.json
