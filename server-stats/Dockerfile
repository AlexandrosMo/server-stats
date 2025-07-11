FROM debian:bookworm-slim

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y procps && \
    apt-get clean

COPY server-stats.sh /server-stats.sh

RUN chmod +x /server-stats.sh

CMD ["/server-stats.sh"]
