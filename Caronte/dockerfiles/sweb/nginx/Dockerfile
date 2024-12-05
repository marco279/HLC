ARG AUTOR
FROM ${AUTOR}/ubuntu

ENV USUARIO="pepe"
ENV PASSWORD="abc"
ARG TZ
ARG PROYECTO
ARG CONTEXT
USER root

RUN apt update && apt install -yq -no-install-recomends \
    nginx

RUN mkdir /root/admin/nginx
COPY ./proyectos/${PROYECTO}/deploy/config/default.conf /etc/nginx/conf.d/default.conf

COPY ./proyectos/${PROYECTO}/deploy/html /var/www/html
# instalo nginx/apache --> usuario www-data
RUN chmod -R 755 /var/www/html
RUN mkdir -p /var/log/nginx
EXPOSE 80

RUN mkdir /root/admin/nginx
COPY ./dockerfile/sweb/nginx/start.sh /root/admin/nginx
RUN chmod +x /root/admin/nginx/start.sh

WORKDIR /root/admin
ENTRYPOINT [ "/root/admin/nginx/start.sh" ]