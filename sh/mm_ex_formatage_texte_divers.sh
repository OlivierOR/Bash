#!/bin/bash

HOOK="http://mattermost.domain.com/hooks/clef"
JSON="{\
\"username\":\"mm_ex_formatage_texte_divers\",\
\"channel\":\"cron\",\
\"text\":\"Exemple de frimousses (Emoji en anglais): :smile: :+1: :sheep: \n\
Exemple de frimousses avec une plus grande taille\
\n # :smile: :+1: :sheep:\n
Ce texte est en italique : _Voil&agrave; un exemple en italique_\n
Ce texte est en gras : **Voil&agrave; un exemple en gras**\n
Ce texte est en gras et en italique : \
**_Voil&agrave; un exemple en gras et en italique_**\n
Ce texte appara&#238;t barr&#233; : ~~Voil&agrave; un texte barr&#233;~~\n
Ce texte tient dans un bloc de code : \`\`\` Omni docet ubique \`\`\`\n
Ce texte est une coloration syntaxique du langage go:
\`\`\`go
package main
import "fmt"
\`\`\`
Ce texte est un lien: \
[D&#233;couvrez Mattermost!](https://about.mattermost.com/)
\n
Ce texte est un lien avec une description au survol du lien :\
[texte alternatif](https://about.mattermost.com/ \\\"Description au \
survol\\\")\n
Exemple d&#146;une image d&#146;un site externe: \
![embedded image](https://travis-ci.org/mattermost/platform.svg)\n\
Exemple d&#146;une ligne avec trois *: \n\
*** \n\
Exemple d&#146;une ligne avec trois _: \n\
___ \n\
Exemple d&#146;un bloc de citations: \n\
> bloc de citations\n\
Exemple de listes :\n\
* &#233;l&#233;ment un\n\
* &#233;l&#233;ment deux\n\
    * sous-point &#233;l&#233;ment deux\n\
Exemple de liste ordonn&#233;e avec des chiffres:\n\
1. Element un\n\
2. Element deux\n\
Exemple de liste de t&acirc;ches avec des coches:\n\
- [ ] Element un\n\
- [ ] Element deux\n\
- [x] Element termin&#233;\n\
\n\
Exemples de titres:\n\
## Grand en t&#234;te\n\
### Plus petit en t&#234;te\n\
#### Encore plus petit en t&#234;te\n\
Grand en t&#234;te
-------------\n\
Exemple d&#146;une image en ligne avec une description\
 au survol de limage:\n\
![Mattermost](https://docs.mattermost.com/_images/icon-76x76.png \
\\\"Mattermost Icon\\\")\n
Exemple d&#146;une image en ligne avec un lien:\n\
[![Mattermost](https://docs.mattermost.com/_images/icon-76x76.png)]\
(https://github.com/mattermost/mattermost-server)\n\
Exemple d&#146;une image redimensionn&#233;e de 50 pixels de largeurs \
et de 76 pixels de hauteur:\n\
![Mattermost](https://docs.mattermost.com/_images/icon-76x76.png =50x76)\n
Exemple d&#146;une image redimensionn&#233;e a 50 pixels: \n\
![Mattermost](https://docs.mattermost.com/_images/icon-76x76.png =50)\n
Exemple d&#146;int&#233gration automatique de videos youtube:
https://www.youtube.com/watch?v=LYa9kaIwKdg
\"}"
notification_mm(){        
curl -sS -o info.log -i -H \
'Content-Type:application/json;charset=utf-8' \
-d "$JSON" \
$HOOK
}
notification_mm;
