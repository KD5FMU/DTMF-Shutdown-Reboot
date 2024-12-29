#!/bin/bash

# Filename: /etc/asterisk/local/shutdown_server.sh
# Purpose: Shuts down the server when triggered by a DTMF command.
# Author: Ham Radio Crusader

# Log the shutdown action for debugging purposes
echo "$(date): Shutdown command received via DTMF." >> /var/log/allstar/shutdown_command.log

# Shutdown the system
/sbin/shutdown now
