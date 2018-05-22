FROM nginx
COPY src /etc/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf