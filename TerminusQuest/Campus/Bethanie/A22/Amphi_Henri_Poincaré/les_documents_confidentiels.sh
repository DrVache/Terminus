#!/bin/bash
echo "Pour valider cette quête, tu dois te rendre au guicher unique en A22 et trouver
ce qui t’appartient, une autre quête t’y attendra..."

while [ true ]
do
	read cdutil
case $cdutil in

        "ls")
                ls 
                ;;
		 "INVENTAIRE")
                echo "Voila l'inventaire (a compléter)"
                ;;	
		 "exit")
               exit
                ;;		
        *)
                if [ ${cdutil:0:2} = "cd" ]
				then
					cd ${cdutil:3}
				elif [ ${cdutil:0:3} = "cat" ]
				then
					cat ${cdutil:4}
				fi
                ;;
esac
#echo ${PWD##*/}
if [ ${PWD##*/} = "guichet_unique" ]
		then
		echo "Quête terminée !"
		chmod 700 .le_rangement_IKEA.sh
		mv .le_rangement_IKEA.sh le_rangement_IKEA.sh
		mv .A.Dibou.txt A.Dibou.txt
		exec $SHELL
	fi
done
