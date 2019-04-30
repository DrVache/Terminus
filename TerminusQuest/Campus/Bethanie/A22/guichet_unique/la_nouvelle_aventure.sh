#!/bin/bash

echo "Récupérez votre fiche de laison dans votre inventaire, remplissez la et signez la.
La fiche de liaison est présente sur l'ordinateur du CREMI.


Si la fiche n’est pas dans l’inventaire :
<Indiana Jones> : Vas au CREMI pour récupérer la fiche, ce sera plus simple.
Si la fiche est mal remplie mais dans l’inventaire :
<Indiana Jones> : Il faut écrire sur la fiche les informations demandées et surtout la signer !.
Si la fiche est bien remplie :
<Indiana Jones> : Très fort, tout cela s’est passé sans accroc j’espère ? Je vais la
signer pour toi. <Deadpool> : Hé hé hé pssst ! Oui toi là abs ! Toi qui joues au
jeu ! Je suis là pour te dire que la fiche de laison est bien plus longue à remplir
maiq que c’était trop long et ennuyant à faire en entier dans le jeu. Les créateurs
ont donc dû la simplifier. Tu retrouveras la vraie fiche en suivant le lien que tu
pourras ajouter dans ton mémo ! N’oublies pas de remplir ton ENT.

echo "Une fois que vous avez correctement remplie la fiche, signer la avec X---X a la fin "

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
				        fi
                ;;
esac

if [ -f "/net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/fiche_de_liaison.txt" ];
then
		echo "fiche de liaison dans votre inventaire"
fi
cat /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/fiche_de_liaison.txt
if(cat /net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/inventaire/fiche_de_liaison.txt | grep "X---X")
then
echo "fiche signée"
	exec $SHELL
fi
done

#add different chmod for new quest or directory
#add "exec $SHELL" at the end to go on current path on the main shell
