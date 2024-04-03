#!/usr/bin/env sh

# Install WordPress.
wp core install \
  --title="Damn Vulnerable WordPress" \
  --admin_user="admin" \
  --admin_password="p4ssw0rd" \
  --admin_email="admin@example.com" \
  --url="http://<ip-address>:31337/" \
  --skip-email

# Update permalink structure.
# wp option update permalink_structure "/%year%/%monthnum%/%postname%/" --skip-themes --skip-plugins

# Activate plugin.
#wp plugin activate iwp-client 
wp plugin activate social-warfare 
#wp plugin activate wp-advanced-search 
#wp plugin activate wp-file-upload
wp plugin activate wps-hide-login
# wp plugin activate wp-time-capsule # Causes error
wp option update home 'http://<ip-address>:31337/'
wp option update siteurl 'http://<ip-address>:31337/'

# Update DB
wp db import dump.sql

