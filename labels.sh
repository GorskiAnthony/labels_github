#!/bin/bash

labels=("REVIEWD" "CORRECTIONS_DONE" "CHANGE_REQUESTED" "CONFLICTS" "CONFLICTS_RESOLVED")
description=("PR validée par le “code reviewer”." "Il y a eu un “Changes requested” et les corrections sont faites." "PR refusée (élève ou formateur). Correction à faire. Puis commit et push sur la  même branche." "PR acceptée par le formateur, mais merge impossible car conflits." "Les conflits ont été résolus, la PR peut être mergée. Ayant déjà été acceptée, elle n'est pas relue.")
colors=("0075ca" "84DE66" "D73A4A" "0F0C1D" "FBCA04")

for ((i=0; i<${#labels[@]}; i++)); do
    gh label create ${labels[i]} --description "${description[i]}" --color "${colors[i]}" --force
done
