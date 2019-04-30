#!/bin/bash


echo "Retrouve ton groupe d’anglais grâce à ton nom.
PS : Le fichier groupes_de_langue.txt contient une centaine de nom avec le groupe
correspondant à chaque étudiant."
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
	  	 "man grep")
               man grep
                ;;
				"cat groupes_de_langue | grep login")
				echo "Voici ton groupe : "
				cat groupes_de_langue.txt | grep login
				exit
				;;
	*)
					
					   if [ ${cdutil:0:2} = "cd" ]
				        then
					         cd ${cdutil:3}
				        elif [ ${cdutil:0:3} = "cat" ]
				        then
							cat ${cdutil:4}
						fi
esac
done
