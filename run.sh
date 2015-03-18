#!/bin/sh


if [ -n "${GANGLIA_TEMPLATE_NAME}" ]; then
    sed -i "s/\$template_name = \"default\"/\$template_name = \"${GANGLIA_TEMPLATE_NAME}\"/g" /usr/share/ganglia/conf.php
fi
service gmetad start
/usr/sbin/httpd -D FOREGROUND
