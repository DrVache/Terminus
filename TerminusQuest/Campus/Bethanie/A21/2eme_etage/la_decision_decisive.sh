#!/bin/bash


echo "Register to an activity
PS : Le fichier prendre_rdv contient une activité disponible , il faut ajouter une X pour s'incrire"


while [ true ]
do
if(cat /mnt/c/TerminusQuest/Campus/Bethanie/A21/2eme_etage/Centre_De_Langues/prendre_rdv | grep "X")
then echo "fini. Nous vous conseillons d'enregistrer le lien du Centre de Langue dans votre inventaire. "
	exit
fi
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
						elif [ ${cdutil:0:4} = "nano" ]
						then
							nano ${cdutil:5}
						fi
esac
done
