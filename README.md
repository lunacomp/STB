1. Install CCminer

```
cd
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash
```
2. Dwonload My Config Wallet Share
```
cd ccminer
wget -O ~/ccminer/config.json https://raw.githubusercontent.com/lunacomp/STB/main/config-share.json
````
````
cd ccminer
wget -O ~/ccminer/run.sh https://raw.githubusercontent.com/lunacomp/STB/main/mining-share && chmod +x run.sh
````
3. Download My Config Wallet Hybrid

```cd ccminer
wget -O ~/ccminer/config.json https://raw.githubusercontent.com/lunacomp/ccminerMobile/main/hybrid-config.json && chmod +x config.json
```

4. Finall start mining
```
cd
curl -o start.sh -k https://raw.githubusercontent.com/lunacomp/STB/main/start.sh && chmod +x start.sh
```
5. Enable autostart on boot
```
echo "@reboot bash /root/ccminer/mining.sh &" | sudo crontab -
```
6. Disable autorun on boot
```
echo "#@reboot bash /root/start.sh &" | sudo crontab -
```
7. Update & Upgrade Armbian
```
curl -o- -k https://raw.githubusercontent.com/lunacomp/STB/main/update.sh | bash
```

8. Install EarAPP
```
wget -qO- https://brightdata.com/static/earnapp/install.sh > /tmp/earnapp.sh && sudo bash /tmp/earnapp.sh

```
