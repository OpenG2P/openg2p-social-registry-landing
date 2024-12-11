#!/bin/bash

# Replace placeholders in HTML with environment variables
envsubst '${SR_ADMIN_URL}' < /usr/share/nginx/html/sr-landing.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/sr-landing.html

# Start NGINX
nginx -g 'daemon off;'

