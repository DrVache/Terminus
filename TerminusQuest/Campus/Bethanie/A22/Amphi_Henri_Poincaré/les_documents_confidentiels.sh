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
		 "jobs")
               jobs
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
		echo "fini"
		exit
	fi
done
