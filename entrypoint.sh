#!/bin/bash

# Replace placeholders in HTML with environment variables
envsubst '${SR_ADMIN_URL} ${SR_REPORTING_URL} ${SR_LOGGING_URL} ${SR_MINIO_URL} ${SR_ODK_URL} ${SR_KAFKA_URL} ${SR_SUPERSET_URL}' < /usr/share/nginx/html/sr-landing.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# Start NGINX
nginx -g 'daemon off;'

