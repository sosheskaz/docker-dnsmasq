ARG ALPINE_TAG=3.14

FROM alpine:${ALPINE_TAG}

RUN apk -U add dnsmasq \
    && rm -rf /var/cache/apk

CMD [ "dnsmasq" "-k" ]
