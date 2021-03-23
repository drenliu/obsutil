FROM alpine:3.7

RUN apk add --no-cache curl wget bash
RUN sed -i 's@ash@bash@g' /etc/passwd
RUN curl -s https://obs-community.obs.cn-north-1.myhuaweicloud.com/obsutil/current/obsutil_linux_amd64.tar.gz | tar -v -xz
RUN mv obsutil_*/obsutil /usr/bin
RUN chmod 755 /usr/bin/obsutil

RUN wget http://gosspublic.alicdn.com/ossutil/1.7.1/ossutil64  && chmod 755 ossutil64 && mv ossutil64 /usr/bin/ossutil

#ENTRYPOINT ["/bin/bash"]
CMD ["/bin/bash"]
