#!/bin/bash
MACHINE=$(hostname -f) 

HOOK="http://mattermost.domain.com/hooks/clef"

JSON="{\
\"username\":\"$USER\",\
\"channel\":\"canal-ko\",\
\"icon_url\":\"http://www.mattermost.org/wp-content/uploads/2016/04/icon_WS.png\",\
\"attachments\":\
[{\"author_name\":\"$USER: michel \n\",\
\"thumb_url\":\"http://www.mattermost.org/wp-content/uploads/2016/04/icon_WS.png\",\
\"author_icon\":\"http://www.mattermost.org/wp-content/uploads/2016/04/icon_WS.png\",\
\"author_link\":\"http://michel.html\",\
\"pretext\":\"$MACHINE: Alerte ! Alerte !\",\
\"text\":\":x: EN PANNE ! \",\
\"color\":\"#FF0000\"\
}]}"

notification_mm(){        

curl -sS -o info.log --proxy \
'' -i -H 'Content-Type:application/json; charset=utf-8' \
-d "$JSON" \
$HOOK

}
notification_mm;


