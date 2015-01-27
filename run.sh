#!/bin/sh
set -e

for file in config.ini sickbeard.db
do
    # Restore config file
    if [ -f /config/$file ]
    then
    	rm -rf "$APP/$file"
    	echo "$file restored."
    else
    	touch /config/$file
    	echo "$file created."
    fi
    ln -sf /config/$file "$APP/$file"
done

# Launch sickrage
python "$APP/SickBeard.py" -q
