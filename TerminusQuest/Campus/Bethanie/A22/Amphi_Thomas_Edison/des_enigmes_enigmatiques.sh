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
  echo "Bien joué !"
  exit
  ;;
  "Faculté")
  echo "Bien joué !"
  exit
  ;;

  *)
  echo "Essaye encore,
  Il te faut être malin."
  
  ;;

esac
done
