#!/bin/bash

echo "Déplaces ces deux objets dans ton inventaire ! Puis va vérifier dans ton inventaire
si tu as bien effectué le déplacement"
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
				        elif [ ${cdutil:0:2} = "mv" ]
						then
							mv ${cdutil:3}
						fi
                ;;
esac


#-------METTRE LE CHEMIN ABSOLUE DU PROJET !--------
if [ -f "/mnt/c/TerminusQuest/Campus/Bethanie/A22/inventaire/carte_etudiante" ]	#-------METTRE LE CHEMIN ABSOLUE DU PROJET !--------
	then
		echo "fini"
		exit
	fi
done
