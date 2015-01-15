#!/bin/sh

set -e

# Restore config file
if [ -f /config/config.ini ]
then
	rm -rf "$APP/config.ini"
else
	touch /config/config.ini
fi
ln -sf /config/config.ini "$APP/config.ini"

# Restore database backup
if [ -f /config/sickbeard.db ]
then
	rm -rf "$APP/sickbeard.db"
else
	touch /config/sickbeard.db
fi
ln -sf /config/sickbeard.db "$APP/sickbeard.db"

# Launch sickrage
python "$APP/SickBeard.py" -q
