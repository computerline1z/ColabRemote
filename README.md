# Remote Colab server
Hướng dẫn remote vào colab server.
Chạy code sau trong colab editor
code:
```bash
!rm ./RDP.sh
!wget https://raw.githubusercontent.com/computerline1z/ColabRemote/main/RDP.sh &> /dev/null
!chmod +x RDP.sh
!./RDP.sh
```

Cài đặt công cụ chạy java (đã cài sẵn trong script)

```bash
!sudo apt -y install icedtea-netx icedtea-plugin
```
Cài đặt ngrok

```python
import requests
# download ngrok first
!wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -q
!unzip -q ngrok-stable-linux-amd64.zip
# start local web server
get_ipython().system_raw('python3 -m http.server 8070 &')
# use ngrok to go public
get_ipython().system_raw('./ngrok http 8070 &')
# check public url
r = requests.get('http://localhost:4040/api/tunnels')
url = r.json()['tunnels'][0]['public_url']
print(url)
```