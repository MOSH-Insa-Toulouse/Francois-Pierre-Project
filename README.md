# Fran-ois-Pierre-Project
## Projet capteur graphene
Projet de 4ème année Génie Physique, à l'INSA de Toulouse. Réalisation d'un capteur graphene de déformation. Le but est de mesurer la résistance et la tension du graphene sur une feuille de papier. Pour ce faire nous avons élaborer un shield PCB sur le logiciel Kicad pour placer nos différent composant sur la carte arduino Uno. Nous avons gérer notre capteur grace à un code arduino qui affiche la résistance ou la tension récupéré sur un écran OLED. Notre capteur est relié en bluetooth au téléphone grace à une module HC-05 que nous gérons via une application APK sur My App inventor.

  - [Livrables](#livrables)
  - [Shield](#shield)
  - [Code Arduino Capteur](#code-arduino-capteur)
  - [Application APK](#application-apk)
  - [Code Arduino banc de test](#code-arduino-banc-de-test)
  - [Datasheet](#datasheet)

## Livrables  

- [ ] PCB shield 
- [ ] Code Arduino gérant le capteur 
- [ ] Application APK
- [ ] Programme servo motor
- [ ] Datasheet

## Shield 

Le Shield a été réaliser sur Kicad. Il sert à disposer tout nos composant sur la carte arduino sans utiliser de BradeBoard. Pour réaliser le shield nous avons d'abord duy réaliser la schématic du circuit sur Kicad. Comme la plus part de nos composant n'étais pas disponible sur les librairies de Kicad nous avons crée une libraire (voir Shield) qui contient les empreinte et schématic de tous nos composant.

- *Capteur Graphique*
![Capteur](Images/Schematic_Capteur.PNG)
![Capteur](Images/Empreinte_Capteur.PNG)

- *Module HC-05*
![Capteur](Images/Schematic_HC-05.PNG)

- *Encodeur Rotatoire*
![Capteur](Images/Schematic_KY-040.PNG)

- *OLED*
![Capteur](Images/Schematic_OLED.PNG)
