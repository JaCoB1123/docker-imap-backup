# A docker container for backing up IMAP mail accounts

This container is a wrapper around the ruby tool imap-backup. It creates a valid configuration with the passed credentials and executes imap-backup.

## Usage

```
docker run --rm -it \
    -e IMAP_SERVER=<YOUR-SERVER-ADDRESS> \
    -e IMAP_USER=<YOUR-USERNAME> \
    -e IMAP_PASSWORD=<YOUR-PASSWORD> \
    -v <YOUR-BACKUP-TARGET-DIR>:/mail_data \
    bymh/imap-backup:latest
```

## Attention

Please note that your credentials might be readable to other users having access to your bash history or docker. They are not encrypted.