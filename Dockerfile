FROM nginx

### Replace the original config.file
### with our own (containing the reverse proxy code)
COPY nginx.conf /etc/nginx/nginx.conf