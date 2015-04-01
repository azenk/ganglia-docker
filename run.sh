#!/bin/sh


if [ -n "${GANGLIA_TEMPLATE_NAME}" ]; then
    sed -i "s/\$template_name = \"default\"/\$template_name = \"${GANGLIA_TEMPLATE_NAME}\"/g" /usr/share/ganglia/conf.php
fi


if [ -n "${GANGLIA_DEBUG}" ]; then
    service httpd start
    /usr/sbin/gmetad --debug=${GANGLIA_DEBUG}
else
    service gmetad start
    /usr/sbin/httpd -D FOREGROUND
fi
