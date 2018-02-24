#!/bin/bash

HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_basique_outrepassant\",\
\"channel\":\"town-square\",\
\"text\":\"Exemple d'un envoi de message avec un \
&#34;incoming webhook&#34; \nen outrepassant le nom d'utilisateur \
et le canal mattermost d&#233;fini\n\
lors de la cr&#233;ation de &#34;l&#145;incoming webhook&#34;.\"}"

notification_mm(){        
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notification_mm;
