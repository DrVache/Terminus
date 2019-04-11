#!/bin/bash

echo "Trouve l’objet caché dans cette salle."

while [ true ]
do

	read cdutil
case $cdutil in	

		   "INVENTAIRE")  #avec "$" devant comme dans le cahier des charges, rien ne se passe
                echo "Hé Jean2, ça va ?"
                ;;	
	  	 "jobs")
               jobs
                ;;
				".hidden")
					echo "Oui c'est bien celui là ! We did it ! Hourra ! Hidden signifie caché"	
					exit
					;;
				"cat .hidden")
					echo "Oui c'est bien celui là ! We did it ! Hourra ! Hidden signifie caché"	
					exit
					;;
	*)
					
					   if [ ${cdutil:0:2} = "cd" ]
				        then
					         cd ${cdutil:3}
				        elif [ ${cdutil:0:3} = "cat" ]
				        then
							cat ${cdutil:4}
						elif [ ${cdutil:0:2} = "ls" ]
				        then
							ls ${cdutil:3}
						elif [ ${cdutil:0:3} = "man" ]
				        then
							man ${cdutil:4}
							fi
esac


done
