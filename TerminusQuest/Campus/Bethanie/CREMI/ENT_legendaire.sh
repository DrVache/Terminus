#!/bin/bash
echo "Renseignes ton numéro étudiant puis copie-colle le lien de l’ENT dans ton mémo.
PS : Le numéro ENT est contenu dans le fichier carte_etudiante."
numetu=$(<../A22/inventaire/carte_etudiante.txt)
#lienutile=$(<../A22/inventaire/lien_utile.txt)
lienent=$(<lien_ent.txt)
res=false
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
						#$($cdutil)
					elif [ $cdutil = $numetu ]
					then
						echo "compte cree"
						res=true
				        fi
                ;;
esac

lienutile=$(</net/cremi/tmaziere/Bureau/Terminus-master/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/lien_utile.txt)



if [ "$lienutile" = "$lienent" ] && [ "$res" = "true" ]
then
	echo "lien correcte jouté"
	exec $SHELL
fi


done

#add different chmod for new quest or directory
#add "exec $SHELL" at the end to go on current path on the main shell
