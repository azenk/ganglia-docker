#!/bin/sh

service gmetad start
/usr/sbin/httpd -D FOREGROUND
