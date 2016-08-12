#!/bin/bash

/root/apps/kfmng.sh

if [ -f /tmp/kfserverinfo.log ]; then
    mail -s "notify - `date`" jmdvirus@roamter.com < /tmp/kfserverinfo.log
    mail -s "notify - `date`" 1085025884@qq.com < /tmp/kfserverinfo.log
fi
rm /tmp/kfserverinfo.log
