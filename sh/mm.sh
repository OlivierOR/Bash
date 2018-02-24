#!/bin/bash
#option -k ajoutée pour le mode insecure de curl 
#suite au changement d'URL du webhook en https le 13/02/2018

mattermost=$(echo "$mattermost" | sed 's@é@\&#233;@g')
HOOK="https://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"$USER\",\
\"channel\":\"$canal\",\
\"text\":\"$mattermost \
\"}"

notification_mm(){        
curl -sS -o $HOME/MATTERMOST/LOG/$(date +%Y-%m-%dT%H-%M-%S).log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
-k $HOOK
}
notification_mm;
