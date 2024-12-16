Date=$(date +%F)
Time=$(date +%H:%M:%S)

Backup_Count=$(ls "$Backup_Directory" | grep -c "backup-")
Backup_Count=$((Backup_Count + 1))

Backup_File="$Backup_Directory/backup-$Backup_Count.tar.gz $Date ($Time)"

LOG_FILE="$Backup_Directory/backup.log"

echo "_______________________________________________________________________________" >> "$LOG_FILE"
echo "Backup Started at $Time on $Date" >>"$LOG_FILE"



 if tar -czf "$Backup_File" "$Source_Directory" >> "$LOG_FILE" 2>&1; then
         echo "Backup Completed successfully: $Backup_File" >>"$LOG_FILE"
 else
         echo "Backup Failed at $Date" >>"$LOG_FILE"
         exit 1
 fi

