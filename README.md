# DTMF-Shutdown-Reboot
This respository contains the directions and script files to install and configure two script files for proper shutdown or a proper reboot of your AllStarLink node.

First things First - Lets create the DTMF command lines in teh rpt.conf file

nano into the rpt.conf

```
sudo nano /etc/asterisk/rpt.conf
```

Then insert the two entries needed for the DTMF code to run the script files. Paste these entries under the [functions] stanza in the rpt.conf file. 

This one is for the shutdown script

```
; Define the DTMF command that will trigger the shutdown
990 = cmd,/etc/asterisk/local/shutdown_server.sh
```

This one is for the reboot script


```
; Define the DTMF command that will trigger the reboot
991 = cmd,/etc/asterisk/local/reboot_server.sh
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


