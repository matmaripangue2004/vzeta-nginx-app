FROM nginx:alpine

LABEL maintainer="vzeta-team"
LABEL version="1.0"
LABEL description="Aplicacion web VZeta con NGINX"

RUN rm -rf /usr/share/nginx/html/*

COPY app/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]