#!/bin/bash

#echo "<Mercy> : Tapes la troisième lettre de mon prénom.
#<Joueur> : R
#<Mercy> : Tape la lettre manquante : INFORM_TIQUE
#<Joueur> : A
#<Mercy> : Tape la 19ème lettre de l’alphabet.
#<Joueur> : S
#<Mercy> : Tout va très bien, tu peux récupérer ton certificat
#Si le joueur se trompe :
#<Mercy> : Désolé, mais tu n’as pas l’air en forme, réessaie plus tard.
#S’il réussie :
#<Mercy> : Bravo, voici ton certificat !"

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

  "R")
  echo "Tapes la lettre manquante : INFORM_TIQUE"
  ;;
  "r")
  echo "Tapes la lettre manquante : INFORM_TIQUE"
  ;;

  "A")
  echo "Tape la 19ème lettre de l’alphabet."
  ;;
  "a")
  echo "Tape la 19ème lettre de l’alphabet."
  ;;

  "S")
  echo "Tout va très bien, tu peux récupérer ton certificat"
  exit
  ;;
  "s")
  echo "Tout va très bien, tu peux récupérer ton certificat"
  exit
  ;;

  *)
  echo "Désolé, mais tu n’as pas l’air en forme, réessaie plus tard."
  exit
  ;;

esac
done
