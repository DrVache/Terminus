#!/bin/bash

if [ "$#" -ne 1 ]; then
 echo "Il me faut le mot elfique en argument './script argument'"
elif [ "$1" == "mellon" ] || [ "$1" == "Mellon" ]
then 
echo "Bravo c'est la bonne réponse"
chmod 700 ../../Arts_et_Metiers
cd ../../Arts_et_Metiers
exec $SHELL
else 
echo "Essaye encore !"
exit

fi
