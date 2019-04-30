#!/bin/bash
echo " <Pr. Chen> : Rends-toi à l’Amphithéâtre Henri Poincaré dans le bâtiment
A22, tu es en retard jeune dress... *hum hum* élève. Dépêche-toi."
while [ true ]
do
	read cdutil
case $cdutil in

        "ls") #Rajouter l option -l ?
                ls
                ;;
		   "INVENTAIRE")  #avec "$" devant comme dans le cahier des charges, rien ne se passe
                echo "Hé Jean2, ça va ?"
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

if [ ${PWD##*/} = "Amphi_Henri_Poincaré" ]
		then
		echo "Quête terminée !"
		chmod 700 .les_documents_confidentiels.sh
		mv .les_documents_confidentiels.sh  les_documents_confidentiels.sh
		exec $SHELL
	fi
done
