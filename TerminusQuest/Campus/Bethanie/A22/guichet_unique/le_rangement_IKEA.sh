#!/bin/bash

echo "Déplaces ta carte etudiante dans ton inventaire ! "
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
if [ -f "/net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/carte_etudiante.txt" ]	#-------METTRE LE CHEMIN ABSOLUE DU PROJET !--------
	then
		echo "fini"
		chmod 700 /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/.le_vaste_monde.sh
		mv /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/.le_vaste_monde.sh /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/le_vaste_monde.sh
		exec $SHELL
	fi
done
