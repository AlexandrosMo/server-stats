FROM debian:bookworm-slim

# Optional: use bash as default shell
SHELL ["/bin/bash", "-c"]

# Install necessary tools
RUN apt-get update && \
    apt-get install -y procps && \
    apt-get clean

# Copy script
COPY server-stats.sh /server-stats.sh
RUN chmod +x /server-stats.sh

# Run the script by default
CMD ["/server-stats.sh"]