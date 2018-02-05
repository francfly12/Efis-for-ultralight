

void heading ()

{
//  note ; 7 " display is 800x480
//  zone heading est 400pix * 60 pix  pour 50 degres
//  un degre= 8 pixels
 
  //   calcul pour la simulation / test
  if (mouseX < 200) {heading = heading +  0.01 *((mouseX - 200));}
  if (mouseX > 350) {heading = heading +  0.01*((mouseX - 350));}
  
  if (heading>= 360) {heading = 0;}  // limite droite
  if (heading<0) { heading = 360;}  //  limite gauche
  
// heading=120 ;   // a effacer
hdg.noStroke();  // pas de bord
hdg.fill(90,90,90);  // fond gris
hdg.rect(0,0,400,60);// heading background

hdg.pushMatrix();  //    partie chiffres XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

calc3 = ((-heading)*8)+192;   //  decalage
hdg.translate(calc3, 0);

hdg.fill(255);
hdg.textSize(28);  //  textes en 28
if ((heading >= 0) && (heading < 90)){
  hdg.textSize(28);
  hdg.text ("0",0,50);  // espaces de 240 pix
  hdg.text ("3",240,50); 
  hdg.text ("6",480,50);
  hdg.text ("9",720,50);
  hdg.textSize(25);   // textes en 25
  hdg.text("34",-168,45);
  hdg.text("35",-88,45);
  hdg.text("1",80,45); // decale de 80 pix et espace de  240 pix
  hdg.text("2",160,45);
  hdg.text("4",320,45);
  hdg.text("5",400,45);
  hdg.text("7",560,45);
  hdg.text("8",640,45);
  hdg.text("10",792,45);
  hdg.text("11",872,45);
}
if ((heading >= 90) && (heading < 180)){  
  hdg.textSize(28);
  hdg.text ("9",720,50);
  hdg.text ("12",950,50); 
  hdg.text ("15",1190,50);
  hdg.text ("18",1430,50);
  hdg.textSize(25);
  hdg.text("7",560,45);
  hdg.text("8",640,45);
  hdg.text("10",792,45);
  hdg.text("11",872,45);
  hdg.text("13",1032,45);
  hdg.text("14",1112,45);
  hdg.text("16",1272,45);
  hdg.text("17",1352,45);
  hdg.text("19",1512,45);
  hdg.text("20",1592,45); 
}
if ((heading >= 180) && (heading < 270)){          
    hdg.textSize(28);
    hdg.text ("15",1190,50);
    hdg.text ("18",1430,50);  
    hdg.text ("21",1670,50);
    hdg.text ("24",1910,50);
    hdg.text ("27",2150,50);
    hdg.textSize(25);
    hdg.text("16",1272,45);
    hdg.text("17",1352,45);
    hdg.text("19",1512,45);
    hdg.text("20",1592,45);
    hdg.text("22",1752,45);
    hdg.text("23",1832,45);
    hdg.text("25",1992,45);
    hdg.text("26",2072,45);
    hdg.text("28",2232,45);
    hdg.text("29",2312,45);
}
if ((heading >= 270) && (heading < 360)){   
    hdg.textSize(28);
    hdg.text ("24",1910,50);
    hdg.text ("27",2150,50);
    hdg.text ("30",2390,50);
    hdg.text ("33",2630,50);
    hdg.text ("0",2880,50);
    hdg.textSize(25);
    hdg.text("23",1832,45);
    hdg.text("25",1992,45);
    hdg.text("26",2072,45);
    hdg.text("28",2232,45);
    hdg.text("29",2312,45);
    hdg.text("31",2472,45);
    hdg.text("32",2552,45);
    hdg.text("34",2712,45);
    hdg.text("35",2792,45);
    hdg.text("1",2960,45);
    hdg.text("2",3040,45);
    hdg.text("34",-168,45);
    hdg.text("35",-88,45); 
}  
  
  // 

hdg.popMatrix();  // 

hdg.pushMatrix();  //    partie traits blancs  XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

 hdg.stroke(255,255,255);  //  couleur blanc du trait
 hdg.strokeWeight(2);
 
 for (calc4=0 ; calc4<=400; calc4=calc4+80) {
calc5 = (calc4 -(heading % 10)*8)+40;   // modulo
 hdg.line (calc5,0,calc5,20);  //   une barre tous les 5 degres = 40 pixels
 hdg.line (calc5+40,0,calc5+40,10);  //   une barre courte


}

hdg.stroke (250);      //  lignes blanches autour
hdg.strokeWeight (2);
hdg.line (1,1,1,60);
hdg.line (1,1,400,1);
hdg.line (400,1,400,60);


//   arrete la, dodo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

hdg.popMatrix();  // 
/**  
 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  hdg.stroke(255, 0,255);    //  index mauve, a effacer
  hdg.strokeWeight(2);
  hdg.line (-100,-100,100,100);
  hdg.stroke(100,250,100);
  hdg.line (-100,100,100,-100);  // croix 
  hdg.ellipse(0,0,25,25);
  
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 */


}