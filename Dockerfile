FROM scratch

# get init and supervisord
COPY --from=zzci/init / /

ENV PATH=$PATH:/build/bin

ADD rootfs /

EXPOSE 8080

CMD ["/start.sh"]
