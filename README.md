# ftpbak
FTP backup script using lftp and mirror

Arguments:

./ftpsync.sh _user_ _pass_ _ftp_ip_ _remote_path_ _local_path_

Example:

./ftpsync.sh user pass 192.168.0.11 server_backup/172.16.231.25/test2 /home/ijat/hehehe

This will upload all folders at local /home/ijat/hehehe to remote server_backup/172.16.231.25/test2 (ftp).
