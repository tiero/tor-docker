FROM alpine:latest

EXPOSE 9050 9051 5353
RUN apk add --no-cache tor
RUN echo "SOCKSPort 0.0.0.0:9050" > /etc/tor/torrc
CMD tor -f /etc/tor/torrc
