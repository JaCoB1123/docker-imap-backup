FROM ruby:alpine

# install imap-backup with ruby package manager
RUN gem install 'imap-backup'

# volume imap mbox data is backed up to
VOLUME ["/root/.imap-backup"]

# copy config template as template and as target file to prepare correct permissions needed for imap-backup
COPY config_template.json /root/.imap-backup/config.json
RUN chmod 600 /root/.imap-backup/config.json

# copy entrypoint script, set permissions for execution
COPY entrypoint.sh /opt/bin/entrypoint.sh
RUN chmod +x /opt/bin/entrypoint.sh
ENTRYPOINT ["/opt/bin/entrypoint.sh"]
