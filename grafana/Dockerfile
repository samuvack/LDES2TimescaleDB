FROM grafana/grafana:4.6.4

RUN apt-get update && \
    apt-get install -y curl gettext-base && \
    rm -rf /var/lib/apt/lists/*

COPY ./grafana/entrypoint.sh ./grafana/.
RUN chmod +x grafana

# Todo: Just for debugging purposes, can be removed
# Make sure that the init flag is not there
RUN rm -rf /var/lib/grafana/.init

#ENTRYPOINT ["./entrypoint.sh"]