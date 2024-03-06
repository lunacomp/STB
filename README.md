1. Install CCminer

```
cd
echo "@reboot bash /root/start.sh &" | sudo crontab -
curl -o update.sh -k https://raw.githubusercontent.com/lunacomp/STB/main/update.sh && chmod +x update.sh
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash"
```
2. Dwonload My Config Wallet
```
cd ccminer
wget -O ~/ccminer/config.json https://raw.githubusercontent.com/lunacomp/ccminerMobile/main/config.json
```
3. Finall start mining
```
cd
curl -o start.sh -k https://raw.githubusercontent.com/lunacomp/STB/main/start.sh && chmod +x start.sh
```
