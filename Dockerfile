FROM ruby:alpine

# install imap-backup with ruby package manager
RUN gem install 'imap-backup'

# volume imap mbox data is backed up to
VOLUME ["/root/.imap-backup"]

# copy entrypoint script, set permissions for execution
COPY entrypoint.sh /opt/bin/entrypoint.sh
RUN chmod +x /opt/bin/entrypoint.sh
ENTRYPOINT ["/opt/bin/entrypoint.sh"]
