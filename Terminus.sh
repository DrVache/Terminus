#!/bin/bash

pip install butterfly>prérequis.txt
pip install docker>>prérequis.txt
butterfly.server.py --generate-certs --host=$(hostname)>certificat.txt
butterfly.server.py --generate-user-pkcs=$(whoami)>>certificat.txt
cp /net/cremi/$(whoami)/.config/butterfly/ssl/$(whoami).p12 /tmp>>certificat.txt
chown $(whoami) /tmp/$(whoami).p12>>certificat.txt
cp /net/cremi/$(whoami)/.config/butterfly/ssl/butterfly_ca.crt /tmp>>certificat.txt
echo '
Dans les paramètres avancées du navigateur, importer le nouveau certificat dans vos paramétres HTTPS/SSL :
/tmp/butterfly_ca.crt dans autorités
/tmp/'$(whoami)'.p12 dans vos certificats.
Appuyer sur Entrée quand vous avez terminer'
google-chrome chrome://settings/certificates>ouverture_chrome.txt 2>&1 &
read  inutile
rm /tmp/$(whoami).p12
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
                     src="https://'$(hostname)'.emi.u-bordeaux.fr:57575/">
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
google-chrome https://$(hostname).emi.u-bordeaux.fr:57575/>>ouverture_chrome.txt 2>&1 &
google-chrome index.html 2>&1 &
butterfly.server.py --host=$(hostname) --port=57575 --login
