#!/bin/bash
echo "Pour valider cette quête, tu dois te rendre au guicher unique en A22 et trouver
ce qui t’appartient, une autre quête t’y attendra..."
while [ true ]
do
read cdutil
cd ${cdutil:3}

echo ${PWD##*/}
if [ ${PWD##*/} = "guichet_unique" ]
then
	echo "fini"
	exit
fi

done
