#!/bin/sh

# replace prepared fields in config template with values of environment variables passed in docker run
envsubst < /root/config_template.json > /root/.imap-backup/config.json

# execute imap-backup, optional with arguments of this script
exec imap-backup "$@"