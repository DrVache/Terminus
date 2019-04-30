#!/bin/bash

echo "Répare le pont et traverse le à l’aide du mot de passe.
Si on lance le script sans argument le message suivant est affiché : Ce script se
lance avec un arguement, ajoute le mot de passe pour le lancer.
Si le mot de passe est mauvais : "..."
PS : Ne pas être sensible à la casse pour le mot de passe, le script téléporte
l’utilisateur dans le répertoire /Campus/Arts_et_métiers/pont. En exécutant
le script présent dans ce répertoire, on revient à /pont/. C’est un passage plus
rapide et pour dynamiser la navigatio"


if [ "$#" -ne 1 ]; then
 echo "Le nombre d'arguments est invalide"
elif [ "$1" == "mellon" ]
then 
echo "Bravo c'est la bonne réponse"
chmod 775 ../../Arts_et_Metiers
cd ../../Arts_et_Metiers
exec $SHELL
fi
