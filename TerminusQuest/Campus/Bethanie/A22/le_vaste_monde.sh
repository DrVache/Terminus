#!/bin/bash

echo "Réussiras-tu à résoudre l’énigme du Pr. Ofaite et à devenir omniscient ?"

while [ true ]
do
	read cdutil
case $cdutil in

		"tree")
				tree
				echo "fini"
				exit
				;;
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
				        fi
                ;;
esac
done
