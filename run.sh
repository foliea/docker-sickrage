#!/bin/sh

set -e

if [ -f /config/config.ini ]
then
	rm -rf "$APP/config.ini"
	rm -rf "$APP/sickbeard.db"
else
	touch /config/config.ini
	touch /config/sickbeard.db
fi

ln -sf /config/config.ini "$APP/config.ini"
ln -sf /config/sickbeard.db "$APP/sickbeard.db"

python "$APP/SickBeard.py" -q
