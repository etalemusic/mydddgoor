git clone https://github.com/etalemusic/colab-argo.git && cd colab-argo/
mkdir /etc/cloudflared/ && cp -r cert.pem /etc/cloudflared/
cp -r gzkl /bin/ && chmod +x /bin/gzkl
cp -r yufei.json /bin && cp -r cloudflared /bin/ && chmod +x /bin/cloudflared 
nohup gzkl -config=/bin/yufei.json &>/dev/null
cp -r d519e4c3-34ab-4489-831f-3a856a41e574.json /etc/cloudflared/ && cp -r config.yml /etc/cloudflared/
nohup cloudflared tunnel --config /etc/cloudflared/config.yml run &>/dev/null

