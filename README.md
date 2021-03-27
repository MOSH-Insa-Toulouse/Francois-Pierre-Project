# Francois-Pierre-Project
## Projet capteur graphene
Projet de 4ème année Génie Physique, à l'INSA de Toulouse. Réalisation d'un capteur graphene de déformation. Le but est de mesurer la résistance et la tension du graphene sur une feuille de papier. Pour ce faire nous avons élaborer un capteur accessible à tous et simple d'utilisation sur arduino et App Inventor. Dans ce Git vous trouverez toute les ressources et information nécéssaire pour comprendre le fonctionnement de notre capteur et pouvoir le réaliser chez vous.

## Sommaire

  - [1. Matériel requis](#1-Matériel requis)
  - [2. Kicad](#2- Kicad)
      - [2.1 Création des empreintes et des composants](#21-Création-des-empreintes-et-des-composants)
      - [2.2 Création du PCB](#22-Création-du-PCB)
  - [3. Code Arduino](#3-code-arduino)
      - [3.1 Librairies utilisées](#31-Librairies-utilisées)
      - [3.2 Le code](#32-Le-code)
  - [4. Application Bluetooth](#4-application-Bluetooth)
  - [5. Banc de test](#5-Banc-de-test)
      - [5.1 Fonctionnement du banc](#51-Fonctionnement-du-banc)
      - [5.2 Code arduino](#52-Code-arduino)
  - [6. Datasheet](#6-datasheet)

## Matériel requis  

- PCB shield 
- Code Arduino gérant le capteur 
- Application APK


## Shield 

Le Shield a été réaliser sur Kicad. Il sert à disposer tout nos composant sur la carte arduino sans utiliser de BradeBoard. Pour réaliser le shield nous avons d'abord duy réaliser la schématic du circuit sur Kicad. Comme la plus part de nos composant n'étais pas disponible sur les librairies de Kicad nous avons crée une libraire (voir Shield) qui contient les empreinte et schématic de tous nos composant.

### Schématique et empreintes

![Capteur](Images/Schematic_Capteur.PNG)
![Capteur](Images/Empreinte_Capteur.PNG)
- *Capteur Graphite*


![Capteur](Images/Schematic_HC-05.PNG)
![Capteur](Images/Empreinte_HC-05.PNG)
- *HC-05*


![Capteur](Images/Schematic_KY-040.PNG)
![Capteur](Images/Empreinte_KY-040.PNG)
- *Encodeur Rotatoire*

![Capteur](Images/Schematic_OLED.PNG)
![Capteur](Images/Empreinte_OLED.PNG)
- *OLED*

- Une fois les empreintes et les schématiques crées nous avons pu réaliser la schématique complète du circuit;
![Capteur](Images/Shield-Schematic.png)

### PCB routage

- Une fois la schématique finis nous avons put qllouer à chaque composants (résistance, capacité...) une empreinte. Nous avons ensuite visualisé sur l'éditeur de circuit imprimé notre PCB. Nous avons donc organisé nos composant pour qu'il tiennent sur le shield et que nous puissons router correctement et sur chaque Pin les différents modules.

![Capteur](Images/PCB_routage_Shield.PNG)

### Visulaisation 3D

- Pour être sur du résultat que nous voulions nous avons pu visulaiser sur Gerber notre shield en 3D avec les composant dessus, à l'execption des module bluetooth, de l'encodeur, du capteur et du LTC qui n'ont pas d'empreinte 3D.

![Capteur](Images/Shield_3D.jpg)

## Code Arduino Capteur

- Le code arduino permet de gérer le capteur. Il récupère sur la pin analogique A0 la valeur de la tension du capteur. grace à une analyse du circuit éléctronique, nous pouvons déterminer la résistance en fonction de la tension. Le code affiche sur un écran OLED différents menus en fonction de si l'on appuie ou non sur l'encodeur rotatoir. Il y a un delay de 5ms entre chaque lecture analogique.

![Capteur](Images/Affiche_Resistance.jpg)
![Capteur](Images/Affiche_Tension.jpg)


## Application APK

- L'application permet de recevoir sur le téléphone la mesure de la résistance et de la tension délivré par le capteur. Nous affichons les deux donnés et nous traçons un graphique de la variation de résistance avec une échelle ajustable. La carte Arduino et plus précisement le module Bluetooth envoie un Octet de donnée au téléphone via les pins TX et RX. Cet otcet contient à la fois des valeurs de résistance et de tension séparés par de ",". Chaque doublet de valeurs est lui séparé par des ";". Notre téléphone reçois donc "49,0.39;35,0.60;70,0.37" avec d'abord la valeur de résistance puis une valeur de tension. Le téléphone sépare donc chaque valeur et les affiches. Notre application traite les données sur un intervalle de 100ms. Notre code a aussi une fonctionnalité qui enlève les variation trop importante de réstistance. En effet lors de nos tests notre téléphone recevait bien les valeurs affiché par le OLED, seulement nous avions aussi des valeurs intanpestives qui ne correspondaient pas à une mesure (entre 1 et 9). Pour pallier à ce problème,nous avons donc décider de ne pas prendre en compte les variations trop importantes. 

![Capteur](Images/Code_APK_separateur.PNG)
- *Code de l'application qui permet de séparer l'octet reçu et de séparer tension et résistance*
- A fin de rescale notre graphique en permanance notre graphique nous avons ajouter une partie au code 
