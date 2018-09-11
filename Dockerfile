FROM nginx:1.15.3
MAINTAINER Joel Nichols "me@joelnichols.co.uk"

RUN rm /etc/nginx/nginx.conf /etc/nginx/mime.types
COPY nginx.conf /etc/nginx/nginx.conf
COPY basic.conf /etc/nginx/basic.conf
COPY mime.types /etc/nginx/mime.types
RUN mkdir /etc/nginx/ssl
COPY default /etc/nginx/sites-enabled/default
#COPY default-ssl /etc/nginx/sites-available/default-ssl
COPY directive-only /etc/nginx/directive-only
COPY location /etc/nginx/location

# expose only HTTP for now
EXPOSE 80

CMD ["nginx"]

