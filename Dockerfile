FROM nginx

CMD ln -s $(pwd)/iframer /usr/share/nginx/html \
  &&  nginx -g daemon off;
