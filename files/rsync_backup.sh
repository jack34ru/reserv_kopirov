#!/bin/bash

DATE=$(date '+%Y-%m-%d %H:%M:%S')
LOG="/home/$USER/backup_home.log"
SRC="/home/$USER/"
DEST="/tmp/backup/"

rsync -a --delete "$SRC" "$DEST" > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "$DATE Backup succesfull" >> "$LOG"
else
	echo "$DATE Backup error" >> "$LOG"
fi
