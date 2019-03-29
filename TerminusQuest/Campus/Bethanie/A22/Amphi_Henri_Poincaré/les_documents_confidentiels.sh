#!/bin/bash


echo "Pour valider cette quête, tu dois te rendre au guicher unique en A22 et trouver
ce qui t’appartient, une autre quête t’y attendra..."

while  [${PWD##*/}=!guichet_unique]
do
read cdutil
cd ${cdutil:2}
done

exit
