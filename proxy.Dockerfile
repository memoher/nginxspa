FROM nginx:1.14.1-alpine

## copiar el archivo de config a a la carpeta de conf de nginx
COPY nginx/nginx.conf /etc/nginx/conf.d/nginx.conf

## Eliminar el sitio por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

## copiar los archivos estaticos
COPY /dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]