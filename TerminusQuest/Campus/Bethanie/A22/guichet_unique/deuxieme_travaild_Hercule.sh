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
          if [ "$cdutils" = "21812345" ]
            then
              echo "Mme.PommeVert : Le voici, tu peux dorénavant le voir avec ls"
              echo "Mme.PommeVert : Penses à le déplacer dans ton inventaire (mv)"
              touch attestation_de_responsabilite_civile.txt
              lienutile=$(</net/cremi/tmaziere/Bureau/Terminus-master/TerminusQuest/Campus/Bethanie/A22/guichet_unique/attestation_de_responsabilite_civile.txt)

              while [ true ]
              do
              read cdutils
              case $cdutils in
                "ls")
                ls
                ;;
                *)
                if [ "$cdutils" = "mv attestation_de_responsabilite_civile.txt ../inventaire" ]
                then
                  exec mv attestation_de_responsabilite_civile.txt ../inventaire
                  echo "Mme.PommeVert : Bonne journée"
                  exit
                else
                  echo " Tu t'es trompé dans la formulation du déplament ( Rappel : mv fichier destination)"
                fi

              esac
            done







              exit
            else
              echo "Reviens me voir quand tu auras retrouvé ton numéro d'étudiant"
              exit
            fi
          fi



esac
done
