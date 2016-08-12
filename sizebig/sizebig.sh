
#!/bin/bash

size=`df | grep xvdb | awk '{print $5}'`
size=${size:0:2}
str="Size has upper to $size"
echo $str > /tmp/dfsize.log
echo "size : $str"
if [ -f /tmp/hassend ]; then
    exit
fi
if [ $size -gt 80% ]; then
    echo "Size is too big $size"
    /root/apps/ServerMonitor.sh "SizeBig" "CleanSize" "SizeIsTooBigTo$size,CleanIt,rmTmpHassendFileWhenCleanDone"
    cd /root/kflogs
    ./kfremoveUnuse.sh
fi
