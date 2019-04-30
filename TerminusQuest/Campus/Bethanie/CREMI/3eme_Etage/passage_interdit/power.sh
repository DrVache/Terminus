#!/bin/bash

echo "Alors, que fait cette commande yes ?
*haahah *rire démoniaque*"

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
				      trap "echo Bravo tu es bientot sorti" 2 3
					
					   if [ ${cdutil:0:2} = "cd" ]
				        then
					         cd ${cdutil:3}
				        elif [ ${cdutil:0:3} = "cat" ]
				        then
					          cat ${cdutil:4}
				        elif [ ${cdutil:0:3} = "yes" ]
						then
							yes ${cdutil:4}
							trap "exit" 2 3
						fi

esac
done
