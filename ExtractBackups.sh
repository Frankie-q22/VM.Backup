#!/bin/bash

Backup_Directory="/home/student/Backup"
Extracted_Directory="/home/student/Backup/Extracted_Backups"




for file in "$Backup_Directory"/backup-*$time; do
    if [ -f "$file" ]; then

        tar -xzf "$file" -C "$Extracted_Directory"
        echo "Extracted $file to $Extracted_Directory"
else
        echo "No backup files found in $Backup_Directory"
    fi
done


