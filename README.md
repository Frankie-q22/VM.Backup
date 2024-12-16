# VM.Backup
have a scripts directory to run Backup.sh and ExtractBackups.sh (home/student/Scripts/     -Backup.sh   -ExtractBackups.sh)
have a directory which you want to back up (Source Directory) (home/student/Documents/     -Test.txt   )   
have a backup directory which stores the stuff in the Source Directory in a Backup Folder and converts the OG stuff into a tar.gz file (home/student/Backup      -Backup-(1234).tar.gz $Date $Time)    -backup.log
have a log file inside Backup to keep track of times backups were made                                                                                                                                 ^^^^^^^^^^^^
have an Extracted Backups(inside backupdirectory) folder which takes the backups in tar.gz and converts it back into the original format from source directory(home/student/Backup/ExtrcatedBackups)
