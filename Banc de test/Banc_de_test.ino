#include <Adafruit_SSD1306.h>
#include <splash.h>
#include <Adafruit_GFX.h>
#include <Adafruit_GrayOLED.h>
#include <Adafruit_SPITFT.h>
#include <Adafruit_SPITFT_Macros.h>
#include <gfxfont.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <Wire.h>



#define baudrate 9600

//HC-05
#define rxPin 1
#define txPin 0


//Capteur
#define analog_port 0

//Écran
#define SCREEN_ADDRESS 0x3C
Adafruit_SSD1306 display(-1);  //-1 car pas de pin reset

// Encodeur Rotatoire
#define clkPin 2
#define dtPin 10
#define swPin 11


double Voltage;
double resistance;
int menu = 0;
bool clkState  = LOW;
bool clkLast  = HIGH;
bool swState  = HIGH;
bool swLast  = HIGH;
int rotVal = 0;

Servo myservo;
int pos = 0;   

//Retourne la position de l'encodeur
int readPos() {

  clkState = digitalRead(clkPin);
  if ((clkLast == LOW) && (clkState == HIGH)) {//rotary moving
    Serial.print("Rotary position ");
    if (digitalRead(dtPin) == HIGH) {
      rotVal = rotVal - 1;
      if ( rotVal < 0 ) {
        rotVal = 0;
      }
    }
    else {
      rotVal++;
      if ( rotVal > 10 ) {
        rotVal = 10;
      }
    }
    Serial.println(rotVal);
    delay(200);
  }
  clkLast = clkState;
  return rotVal;
}

//Retourne le nombre de fois ou l'on a appuyer sur l'encodeur
int readSw() { /* function readRotary */

  //gestion bouton
  swState = digitalRead(swPin);
  if (swState == LOW && swLast == HIGH) {
    menu++;
    delay(100);//debounce
  }
  swLast = swState;
  return menu;
}

//Affiche le menu principale

void Affichage_Menu() {
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  display.setCursor(0, 0);
  display.println(F("Capteur"));
  display.setTextSize(1);
  display.setCursor(0, 17);
  display.println("Appuyez pour defiller");
  display.display();
}

//Affiche la tension

void Affichage_Tension (double u)
{

  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  display.setCursor(30, 0);
  display.println(F("Tension"));
  display.setCursor(40, 17);
  display.println(u);
  display.setCursor(90, 17);
  display.println(F("V"));
  display.display();
}

//Affiche la resistance

void Affichage_Resistance (double r)
{
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);

  display.setCursor(5, 0);
  display.println(F("Resistance"));
  display.setCursor(0, 17);
  display.println(r, 1);
  display.setCursor(65, 17);
  display.println(F("MOhms"));
  display.display();
}



void setup()
{
  //Servo-moteur
  myservo.attach(9);
  //Mode des pin de l'encodeur rotatoir
  pinMode(clkPin, INPUT);
  pinMode(dtPin, INPUT);
  pinMode(swPin, INPUT_PULLUP);

  //Ouverture des ports
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  Serial.begin(baudrate);
  display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);
  display.clearDisplay();
  Affichage_Menu();//Affiche du menu principale
}



void loop()
{
  for(pos = 0; pos < 180; pos += 1)  // goes from 0 degrees to 180 degrees
  {                                  // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
  for(pos = 180; pos>=1; pos-=1)     // goes from 180 degrees to 0 degrees
  {                                
    myservo.write(pos);              // tell servo to go to position in variable �pos�
    delay(15);                       // waits 15ms for the servo to reach the position
  }
  display(SSD1306_SETCONTRAST);                   // 0x81
  ssd1306_command(0x8F);
  Voltage = analogRead(analog_port) * 5.0 / 1024.0; //Tension sur 5V et 8bits
  resistance = (1 + 100) * 100000 * (5 / Voltage) - 100000 - 10000;//Calcule de la résistance
  Serial.print(resistance / 1000000); //envoie de la valeur de la résistance par le module bluetooth
  Serial.print(",");//séparateur entre la valeur de tension et de résistance
  Serial.print(Voltage);//envoie de la valeur de la tension par le module bluetooth
  Serial.print(";");//séparateur entre 2 mesures
  

  /*Dès qu'on appuie sur l'encodeur on bascule sur l'affichage tension ou résistance
    Un nombre pair d'appuie on affiche la résistance, un nombre impaire la tension*/
  if (!(readSw() == 0)) {
    if (readSw() % 2 == 0) {
      Affichage_Resistance(resistance / 1000000);
    } else if (readSw() % 2 == 1) {
      Affichage_Tension (Voltage) ;
    }
  }

  display.clearDisplay();
  delay(5);

}
