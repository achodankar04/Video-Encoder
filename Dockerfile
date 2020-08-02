FROM achodankar/ub-encoder-linux:latest

MAINTAINER achodankar <ultimate.buzz.2019@gmail.com>

RUN rm -rf /var/www/html/*
COPY . /var/www/html

# fix permissions
RUN chown -R www-data. /var/www/html

# create volume
RUN install -d -m 0755 -o www-data -g www-data /var/www/html/videos

# set non-root user
USER www-data

EXPOSE 8000

VOLUME ["/var/www/html/videos"]
