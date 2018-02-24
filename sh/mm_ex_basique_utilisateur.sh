#!/bin/bash

HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_basique_utilisateur\",\
\"channel\":\"@michel\",\
\"text\":\"Exemple d'envoi de message à un utilisateur. \
\"}"

notification_mm(){        
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notification_mm;
