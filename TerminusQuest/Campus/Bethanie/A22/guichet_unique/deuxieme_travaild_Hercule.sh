 #!/bin/bash


echo "Mission : Récupère ton attestation de responsabilité civile et
va donner les documents nénessaires au secrétariat pédagogique."

echo "Mme.PommeVert : Bienvenu au guichet Unique, en quoi puis-je vous être utile ? "
echo "Mme.PommeVert : Demander des informations concernant l'Université : 1"
echo "Mme.PommeVert : Demander son attestation de responsabilité civile : 2"
echo "Mme.PommeVert : Demander ou se trouver le CREMI : 3"
while [ true ]
 do
  #statements
  read cdutils
case $cdutils in


 "ls")
 ls
 ;;

 *)
  if [ "$cdutils" = "1" ]
    then
      echo "Mme.PommeVert : L'Université Sciences et Technologiques se trouve sur le campus de Talence."
      echo "Mme.PommeVert : Le guichet Unique te permet d'avoir des informations générales sur la vie à l'Université."
      echo "Mme.PommeVert : Si tu souhaites des informations relatives à ta spécialité, tu peux te diriger vers le sécrétaria correspondant."
      echo "Mme.PommeVert : Chaque début d'année, le chargé de promotion t'informera du batiment où tu devras te diriger"
      exit
    fi

    if [ "$cdutils" = "3" ]
      then
        echo "Mme.PommeVert : Le CREMI ou autrement dit, le bâtiment A28 se situe à côté du guichet unique"
        echo "Mme.PommeVert : En sortant du A22, tu peux t'y diriger directement"
        exit
      fi

      if [ "$cdutils" = "2" ]
        then
          echo "Mme.PommeVert : Tu souhaites ton attestation de responsabilité civile"
          echo "Mme.PommeVert : Donnes moi ton numéro d'étudiant que je le retrouve"
          read cdutils
          if [ "$cdutils" = "2142148" ]
            then
              echo "Mme.PommeVert : Le voici, tu peux dorénavant le voir avec ls"
              echo "Mme.PommeVert : Mais penses à le déplacer dans ton inventaire (mv)"
              echo "Mme.PommeVert : Bonne journée"
              touch attestation_de_responsabilite_civile.txt
              exit
            fi
          fi



esac
done
