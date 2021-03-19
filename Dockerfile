FROM alpine:3.7

RUN apk add --no-cache curl

RUN curl -s https://obs-community.obs.cn-north-1.myhuaweicloud.com/obsutil/current/obsutil_linux_amd64.tar.gz | tar -v -xz

RUN mv obsutil_*/obsutil /usr/bin
RUN chmod 755 /usr/bin/obsutil
