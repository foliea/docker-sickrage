#!/bin/sh
set -e

for filename in config.ini sickbeard.db
do
    # Volume config file
    config_file="/config/$filename"
    # Sickrage config file
    app_file="$APP/$filename"

     # Restore Sickrage config file
    if [ -f $config_file ]
    then
    	rm -rf $app_file
    	echo "$app_file restored."
    else
    	touch $config_file
    	echo "$app_file created."
    fi
    ln -sf $config_file $app_file
done

# Launch Sickrage
python "$APP/SickBeard.py" -q
