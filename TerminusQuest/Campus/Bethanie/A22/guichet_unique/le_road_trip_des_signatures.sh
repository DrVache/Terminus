#!/bin/bash


echo "Parlez à Indiana Jones si ce n’est pas déjà fait, puis sivez ces instructions.
Si la convention n’est pas signée par tout les partis, le joueur ne peut aps la
mettre dans la boîte aux lettres.
Le responsable légal apparaîtra, pour cette quête, à l’arrêt Béthanie.
"
signature=false
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
					 elif [ "$cdutil" = "cat Representant_legal.txt" ] && [ ${PWD##*/} = "Bethanie" ]
					then echo "fiche signée"
						signature=true

				        elif [ ${cdutil:0:3} = "cat" ]
				        then
					          cat ${cdutil:4}
				        elif [ "$cdutil" = "mv fiche_de_liaison.txt boite_au_lettre" ] && [ $signature = true ]
						then

						mv /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/fiche_de_liaison.txt /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/.ficheEnvoyée_de_liaison.txt
						exec $SHELL
						fi

esac
done


"
