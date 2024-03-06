1. Install CCminer

```
cd
curl -o update.sh -k https://raw.githubusercontent.com/lunacomp/STB/main/update.sh && chmod +x update.sh
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash"
```
2. Dwonload My Config Wallet Share
```
cd ccminer
wget -O ~/ccminer/config.json https://raw.githubusercontent.com/lunacomp/ccminerMobile/main/config.json
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
echo "@reboot bash /root/start.sh &" | sudo crontab -
```
6. Disable autorun on boot
```
echo "#@reboot bash /root/start.sh &" | sudo crontab -
```
7. Update & Upgrade Armbian
```
curl -o- -k https://raw.githubusercontent.com/lunacomp/STB/main/update.sh | bash
```
