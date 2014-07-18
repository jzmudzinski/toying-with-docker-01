FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Publish port 80
EXPOSE 80

# Start nginx when container starts
ENTRYPOINT /usr/sbin/nginx

