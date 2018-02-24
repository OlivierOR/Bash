#!/bin/bash

HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"channel\":\"@michel\",\
\"username\":\"mm_ex_basique_tableau-2\",\
\"text\":\"#### R&#233;sultat des tests du 5 janvier 2018\n<!channel> \
Veuillez faire la revue des tests &#233;chou&#233;s.\n\
\n
| Composant  | Tests concluants   | Tests &#233;chou&#233;s |\n\
|:-----------|:-----------:|:-------------------\
----------------------------|\n\
| Server     | 948         | :white_check_mark: 0 |\n\
| Client Web | 123         | :warning: 2 [(Voir \
les details)](http://linktologs) |\n\
| Client IoS| 78          | :warning: 3 [(Voir \
les details)](http://linktologs) |\n\
\n
\"}"
notification_mm(){
curl -sS -o info.log -i -H \
'Content-Type:application/application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notification_mm;
