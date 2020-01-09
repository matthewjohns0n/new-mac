if [ -f /Library/LaunchAgents/com.cisco.anyconnect.gui.plist ]; then
    echo "Startup file found found!"
    sudo mv /Library/LaunchAgents/com.cisco.anyconnect.gui.plist /Library/LaunchAgents/com.cisco.anyconnect.gui.plist-OLD
else
    echo "Startup file not found found. This might already removed from startup."
fi
