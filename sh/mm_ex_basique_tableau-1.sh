#!/bin/bash

HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"channel\":\"@michel\",\
\"username\":\"mm_ex_basique_tableau-1\",\
\"text\":\"Exemple basique de tableau.\n\
\n
| Sur la  gauche  | Au centre  | Sur la droite |
| :------------------ |:--------------:| ------:|
| Colonne de gauche 1 | Ce texte       |  \$100 |
| Colonne de gauche 2 | est au         |   \$10 |
| Colonne de gauche 3 | centre         |    \$1 |
\n
\"}"
notification_mm(){
curl -sS -o info.log -i -H \
'Content-Type:application/application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notification_mm;
