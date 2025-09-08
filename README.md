![Internet Monitor Logo](https://github.com/KD5FMU/DTMF-Shutdown-Reboot/blob/main/reboot-shutdown2.png)
### Buy Me A Coffee ###
<a href="https://buymeacoffee.com/4MvSpi2tTY" target="_blank">
  <img src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?style=for-the-badge&logo=buymeacoffee&logoColor=black" />
</a>

### Support me on Patreon ###
<a href="https://www.patreon.com/c/HamRadioCrusader" target="_blank">
  <img src="https://img.shields.io/badge/Support%20me%20on-Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white" />
</a>

# DTMF-Shutdown-Reboot
Have you ever needed to reboot or shutdown your AllStarLink node remotley? Well this is a great method to do these things over RF or from your Supermon Dashboard through DTMF.
This respository contains the directions and script files to install and configure two script files for proper shutdown or a proper reboot of your AllStarLink node.

First things First - Lets create the DTMF command lines in the rpt.conf file

nano into the rpt.conf

```
sudo nano /etc/asterisk/rpt.conf
```

Then insert the two entries needed for the DTMF code to run the script files. Paste these entries under the [functions] stanza in the rpt.conf file. 

This one is for the shutdown script

```
; Define the DTMF command that will trigger the shutdown
990 = cmd,/etc/asterisk/local/shutdown.sh
```

This one is for the reboot script


```
; Define the DTMF command that will trigger the reboot
991 = cmd,/etc/asterisk/local/reboot.sh
```

Now it's always best pratices to download the script files to a location where you know where they are. Since I am still used to the structure of the HamVoIP Operating System I put all of my script files in the /etc/asterisk/local folder. ASL3 does not have this folder so it needs to be created. You can do this by entereing this command:
```
sudo mkdir /etc/asterisk/local
```


Then switch your location to that folder with this command:
```
cd /etc/asterisk/local
```



Once this is done you can download the script files with the following wget commands.

This one is for the Shutdown script file:
```
sudo wget https://raw.githubusercontent.com/KD5FMU/DTMF-Shutdown-Reboot/refs/heads/main/shutdown.sh
```


This one is for the Reboot script file:
```
sudo wget https://raw.githubusercontent.com/KD5FMU/DTMF-Shutdown-Reboot/refs/heads/main/reboot.sh
```


Once these files are downloaded we need to make them executable. This is done thusly:
```
sudo chmod +x shutdown.sh
```


and for the reboot file:
```
sudo chmod +x reboot.sh
```



Once you have all this done I recommend to reboot the server. 

Once the server has rebooted go and ahed and give the DTMF commands a try. Now with most Ham Radios its only a matter of pushing in the PTT button while simultaiously pushing the approapriate DTMF keys for the command. In this instance it is as such:

*990 to execute the shutdown script file

and

*991 to execute the reboot script file

Now if you wish you can also bring up your Supermon page and log in to it. Then in the dialog box you can enter the DTMF command including the asterisk symbol (star) and then hit the DTMF button and they will also activate the script file desired. 

I hop you find these files helpful.

73 DE KD5FMU

<a href="https://buymeacoffee.com/4MvSpi2tTY" target="_blank">
  <img src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?style=for-the-badge&logo=buymeacoffee&logoColor=black" />
</a>


"Ham On Y'all!!"


