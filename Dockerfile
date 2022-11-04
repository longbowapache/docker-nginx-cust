FROM debian:stable-slim

ENTRYPOINT /usr/sbin/nginx
WORKDIR /scripts
COPY scripts /scripts
RUN chmod +x pre.sh && ./pre.sh
RUN chmod +x build.sh && ./build.sh && rm -rf build
