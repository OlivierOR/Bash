#!/bin/bash

HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"$USER\",\
\"channel\":\"dprive-msg-menu\",\
\"text\":\"$mattermost \
\"}"

notification_mm(){        
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notification_mm;
