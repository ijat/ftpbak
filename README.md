# ftpbak
FTP backup script using lftp and mirror

## Arguments

```./ftpsync.sh user pass ftp_ip remote_path local_path```

## Examples

```./ftpsync.sh user pass 192.168.0.11 server_backup/172.16.231.25/test2 /home/ijat/hehehe```

This will upload all directories (recursively) from local **/home/ijat/hehehe** to remote **server_backup/172.16.231.25/test2** (ftp).

## Log file

There are two log file named

* ftp.run.log - Last output of lftp

* ftpbak.script.log - Log of script run time and date

## Credit

Credits to easel from http://serverfault.com/a/24833
