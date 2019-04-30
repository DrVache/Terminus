#!/bin/bash

echo "Bienvenue à l'infirmerie, nous allons voir comment tu te sens"
echo "<Mercy> : Tapes la troisième lettre de mon prénom."

while [ true ]
 do
  #statements
  read cdutils
case $cdutils in

 "ls")
 ls
 ;;

 *)
  if [ "$cdutils" = "R" ] || [ "$cdutils" = "r" ]
    then
      echo "Tapes la lettre manquante : INFORM_TIQUE"
      read cdutils
      if [ "$cdutils" = "A" ] || [ "$cdutils" = "a" ]
      then
        echo "Tape la 19ème lettre de l’alphabet."
        read cdutils
        if [ "$cdutils" = "S" ] || [ "$cdutils" = "s" ]
        then
          echo "Bravo!"
          exit
        else
          echo "Désolé, mais tu n’as pas l’air en forme, réessaie plus tard."
          exit
        fi
      else
        echo "Désolé, mais tu n’as pas l’air en forme, réessaie plus tard."
        exit
      fi
    else
      echo "Désolé, mais tu n’as pas l’air en forme, réessaie plus tard."
      exit
    fi



esac
done
