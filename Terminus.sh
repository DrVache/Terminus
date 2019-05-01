#!/bin/bash

echo '||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
/!\ Attention des longueurs peuvent être observés. Patience! /!\
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||'
mkdir Installation>>prérequis.txt 2>&1
mv prérequis.txt Installation/prérequis.txt
virtualenv butterfly>>Installation/prérequis.txt 2>&1
source butterfly/bin/activate
pip install butterfly>>Installation/prérequis.txt 2>&1
machine=$(hostname)
nom=$(whoami)
butterfly.server.py --generate-certs --host=$machine>Installation/certificat.txt
butterfly.server.py --generate-user-pkcs=$nom>>Installation/certificat.txt
cp /net/cremi/$nom/.config/butterfly/ssl/$nom.p12 /tmp>>Installation/certificat.txt
chown $nom /tmp/$nom.p12>>Installation/certificat.txt
cp /net/cremi/$nom/.config/butterfly/ssl/butterfly_ca.crt /tmp>>Installation/certificat.txt
echo '
Dans les paramètres avancées du navigateur, importer le nouveau certificat dans vos paramétres HTTPS/SSL :
/tmp/butterfly_ca.crt dans autorités
/tmp/'$nom'.p12 dans vos certificats.
Appuyer sur Entrée quand vous avez terminer'
google-chrome chrome://settings/certificates>Installation/ouverture_chrome.txt 2>&1 &
read  inutile
rm /tmp/$nom.p12
echo '<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="author" content="D.Montiel, T.Maziere, D.Blareau, L.Moraïz, N.Boisson, F.Gardes from Bordeaux University"/>
    <link rel="stylesheet" type="text/css" href="Terminus.css"/>
    <title>Terminus</title>
  </head>
<body>
        <div id="global">
                <!--PREMIER CADRE-->
                <div id="terminal" >
                  <h3>Terminal </h3>
                  <iframe
                    height="85%"
                    width="460"
                     src="https://'$machine'.emi.u-bordeaux.fr:57575/">
                    </iframe>
                </div>
                <!--SECOND CADRE-->
                <div id="imageLieu">
                    <h3> Image du lieu actuel</h3>
                    <p>Code JavaScript qui permet de recuperer l'image représentant l'endroit ou ce trouve le joueur.</p>
                    <p> Soit on garde les images avec le code source soit on les met dans le Docker mais on devras surement les récuperer avec XtermJS si possible ou autre.</p>
                </div>
            </div>
</body>
</html>
'>index.html
google-chrome https://$machine.emi.u-bordeaux.fr:57575/>>Installation/ouverture_chrome.txt 2>&1 &
google-chrome index.html>>Installation/ouverture_chrome.txt 2>&1 &
cd TerminusQuest/
Quest=$(pwd)
echo $Quest
cp -r $Quest ~/
cd
echo -e 'export INVENTAIRE=~/TerminusQuest/Campus/Bethanie/A22/inventaire'
echo -e 'alias Begin=\0047 cd TerminusQuest/Campus/Bethanie/ && cat Pr.Chen.txt\0047'>> ~/.bash_aliases
source ~/.bashrc
butterfly.server.py --host=$machine --port=57575 --login
rm -r TerminusQuest
