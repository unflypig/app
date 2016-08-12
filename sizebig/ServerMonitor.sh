me"}

title=$2
title=${title:="ForgetTitle"}

content=$3
content=${content:="NoSpace"}

data="{\"text\":\"$text\",\"attachments\":[{\"title\":\"$title\",\"text\":\"$content\",\"color\":\"#ee2211\"}]}"

echo -e "Data: $data"
curl 'https://hook.bearychat.com/=bw6ls/incoming/77fd2ce0ddfba4b0260a85f1a9c78d84' \
    -H 'Content-Type: application/json' \
    -d $data
