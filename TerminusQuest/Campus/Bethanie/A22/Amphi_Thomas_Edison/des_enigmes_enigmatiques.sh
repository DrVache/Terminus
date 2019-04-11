#!/bin/bash

echo "Réponds correctement à l’énigme du Père Fouras
Elle désigne une aptitude
Mentale ou physique
C'est un haut lieu pour les études
Par exemple en informatique
Qui est-elle ? "

while [ true ]
 do
  #statements
  read cdutils
case $cdutils in

 "ls")
 ls
 ;;


  "faculté")
  echo "Bien joué ! Tu as gagné la clef !"
  exit
  ;;
  "Faculté")
  echo "Bien joué ! Tu as gagné la clef !"
  exit
  ;;

  *)
  echo "Le sablier arrive bientôt à sa fin,
  Pour avoir la clef il te faut être malin."
  
  ;;

esac
done
