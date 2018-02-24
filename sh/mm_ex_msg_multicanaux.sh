#!/bin/bash

notif1(){
HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_msg_multicanaux\",\
\"channel\":\"town-square\",\
\"text\":\"Exemple de message multi-canaux. \
\"}"
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notif2(){
HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_msg_multicanaux\",\
\"channel\":\"cron\",\
\"text\":\"Exemple de message multi-canaux. \
\"}"
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notif3(){
HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_msg_multicanaux\",\
\"channel\":\"canal-ko\",\
\"text\":\"Exemple de message multi-canaux. \
\"}"
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notif4(){
HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_msg_multicanaux\",\
\"channel\":\"canal-ok\",\
\"text\":\"Exemple de message multi-canaux. \
\"}"
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notif1 && notif2 && notif3 && notif4;
