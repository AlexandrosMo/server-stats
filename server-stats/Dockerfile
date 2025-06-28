FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y procps coreutils psutils

COPY server-stats.sh /server-stats.sh
RUN chmod +x /server-stats.sh

CMD ["/server-stats.sh"]