FROM onlyoffice/documentserver:6.4.2.6
RUN rm -rf /var/www/onlyoffice/documentserver/core-fonts/*
COPY winfont /usr/share/fonts/winfont
RUN fc-cache -f -v
VOLUME /etc/onlyoffice /var/log/onlyoffice /var/lib/onlyoffice /var/www/onlyoffice/Data /var/lib/postgresql /usr/share/fonts/truetype/custom
CMD bash -C '/app/onlyoffice/run-document-server.sh';'bash'