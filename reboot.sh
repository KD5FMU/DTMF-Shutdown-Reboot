#!/bin/bash

# Filename: /etc/asterisk/local/reboot_server.sh
# Purpose: Reboots the server when triggered by a DTMF command.
# Author: Freddie Mac - KD5FMU / Ham Radio Crusader

# Log the reboot action for debugging purposes
echo "$(date): Reboot command received via DTMF." >> /var/log/asterisk/reboot_command.log

# Reboot the system
/sbin/reboot
