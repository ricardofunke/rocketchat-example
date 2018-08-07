FROM mongo:4.0.0-xenial

RUN apt-get update && \
    apt-get install -y cron

COPY backup.sh /backup.sh
COPY start.sh /start.sh
RUN chmod +x /start.sh && chmod +x /backup.sh

ENTRYPOINT ["/start.sh"]
CMD [""]