FROM nginx:stable-alpine

# ADD Custom Config
ADD ./config/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./config/nginx/default.conf /etc/nginx/conf.d/default.conf

# Make Directory - Workspace
RUN mkdir -p /var/www/html

# ADD and set Group
RUN addgroup -g 1000 www && adduser -G www -g www -s /bin/sh -D www

# Set Group to Workspace
RUN chown www:www /var/www/html