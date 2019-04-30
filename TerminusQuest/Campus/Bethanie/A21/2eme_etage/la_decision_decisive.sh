#!/bin/bash


echo "Register to an activity
PS : Le fichier prendre_rdv contient une activité disponible , il faut ajouter une X pour s'incrire
Rappelez vous de l'utilité de 'tree'"


while [ true ]
do
if(cat /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A21/2eme_etage/Centre_De_Langues/prendre_rdv.txt | grep "X")
then echo "Quête terminé. Nous vous conseillons d'enregistrer le lien du Centre de Langue dans votre inventaire. "
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
	  	 "tree")
               tree
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
