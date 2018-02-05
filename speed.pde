void speed()   //  partie echelle de vitesse

{
  
  //  calcul de airspeed pour le test
 airspeed= airspeed+ ((-mouseY+180)/50) ;
 if (airspeed>300) {airspeed=300;}  // airspeed max 300
 if (airspeed<0) {airspeed=0;}  // airspeed min 0
 speed10s=airspeed+10- ((-mouseX+400)/10);  //  vitesse atteinte dans 10 sec. (accel)

spd.noStroke();

spd.fill(90,90,90);      // fond gris
spd.rect(0,0,70,380);    // speed background
                         // effacement zone noire vitesse
spd.fill(0,0,0);     // fond noir
spd.rect(71,1,30,380);   // speed background


spd.stroke (255);
spd.strokeWeight (2);
//spd.line (0,0,100,0);   // cadre blanc haut+bas+droit
spd.line (70,0,70,380);   // l'origine passe en bas sur le trait blanc
//spd.line (0,380,100,380);

spd.pushMatrix();           // matrice de transformation

//spd.stroke (255);
//spd.strokeWeight (2);
//spd.fill(255);  // couleur blanc du texte



spd.translate(70,200+(4*airspeed));      //   
spd.line (-20,0,0,0);      //  une barre tous les 10 Km/H
spd.line (-20,-40,0,-40);  //   = tous les 40 pixels
spd.line (-20,-80,0,-80);    //
spd.line (-20,-120,0,-120);
spd.line (-20,-160,0,-160);
spd.line (-20,-200,0,-200);
spd.line (-20,-240,0,-240);
spd.line (-20,-280,0,-280);
spd.line (-20,-320,0,-320);
spd.line (-20,-360,0,-360);
spd.line (-20,-400,0,-400);   //  barre 100 km/h
spd.line (-20,-440,0,-440);
spd.line (-20,-480,0,-480);
spd.line (-20,-520,0,-520);
spd.line (-20,-560,0,-560);
spd.line (-20,-600,0,-600);
spd.line (-20,-640,0,-640);
spd.line (-20,-680,0,-680);
spd.line (-20,-720,0,-720);
spd.line (-20,-760,0,-760);
spd.line (-20,-800,0,-800);    //  barre 200 km/h
spd.line (-20,-840,0,-840);
spd.line (-20,-880,0,-880);
spd.line (-20,-920,0,-920);
spd.line (-20,-960,0,-960);
spd.line (-20,-1000,0,-1000);
spd.line (-20,-1040,0,-1040);
spd.line (-20,-1080,0,-1080);
spd.line (-20,-1120,0,-1120);
spd.line (-20,-1160,0,-1160);
spd.line (-20,-1200,0,-1200);     //   barre 300 km/h
spd.line (-20,-1240,0,-1240);
spd.line (-20,-1280,0,-1280);
spd.line (-20,-1320,0,-1320);
spd.line (-20,-1360,0,-1360);     //  barre 340 km/h

spd.textSize(20);          // chiffres blancs ******************************

//spd.background(90,90,90); // fond gris pour cette partie

spd.stroke (255);
spd.strokeWeight (2);
spd.fill(255);  // couleur blanc du texte
spd.text("20",-50,-72);
spd.text("40",-50,-152);
spd.text("60",-50,-232);
spd.text("80",-50,-312);
spd.text("100",-63,-392);
spd.text("120",-63,-472);
spd.text("140",-63,-552);
spd.text("160",-63,-632);
spd.text("180",-63,-712);
spd.text("200",-63,-792);
spd.text("220",-63,-872);
spd.text("240",-63,-952);
spd.text("260",-63,-1032);
spd.text("280",-63,-1112);
spd.text("300",-63,-1192);
spd.text("320",-63,-1272);
spd.text("340",-63,-1352);

//                         Survitesse **********************************
 if (airspeed>210) {
spd.stroke(255,0,0);    //  rouge
spd.fill(255,0,0);
spd.strokeWeight(2); vmo4=-(vmo*4);  // pour calcul plus rapide
spd.line (11,vmo4,11,-1400);   // ligne rouge au dessus de VMO
// spd.rect(3,vmo4,5,-5);   // speed background
float i=1;
//for (int i = 5; i < height; i += 5) {
for ( i=0;i < 400;i +=15)  {
spd.rect (3,vmo4-i,5,-5);  //  rectangle rouge 
}
 }    // endif
 
 //                        basses vitesses - stall  ********************
 if (airspeed<140) {
spd.stroke(255,0,0);    //                                          rouge
spd.fill(255,0,0);
spd.strokeWeight(2); 
spd.rect(2,0,4,-4*(stallspeed));   /// boite rouge jusqu au stall
 }    // endif

 //                      zone de couleur 
 spd.stroke(0,255,0);    //                                         vert
 spd.strokeWeight(1);
 spd.fill(0,255,0);   
 
 spd.rect(1,-4*stallspeed,5,-4*(vne-stallspeed));  //  zone verte
 spd.rect(1,-4*stallspeed+1,5,-4*(vne-stallspeed)+1); 
 
 spd.strokeWeight(2);
 spd.noFill();
 spd.ellipse(4,-4*greendot,15,15);      //    greendot
 
 spd.stroke(0,255,0);    //                                         vert
 spd.strokeWeight(1); 
 spd.fill (0,255,0);
// spd.line(-20,-4*vman,15,-4*vman);      //   Vman  speed
 spd.rect(-20,-4*vman,35,2);  //         Vman speed
 
 spd.fill(219,180,51);    //                   ambre   - entre vne et vmo
 spd.stroke(219,180,51);    
 spd.rect(1,-4*(vne),6,-4*(vmo-vne)+2);   //  zone ambre
 
 spd.fill(255,255,255);   //                      blanche vitesse flaps
 spd.stroke(255,255,255);
 spd.rect(7,-4*stallFspeed,5,-4*(vf-stallFspeed));    //

spd.popMatrix();   //  partie fixe de l echelle
spd.stroke(255,255,0);    //                    jaune     //  speed index
spd.strokeWeight(3);
spd.fill(255,255,0);   //  fond noir ensuite 

spd.strokeWeight(1);
spd.beginShape();   // triangle  index vitesse
spd.vertex (85,200);
spd.vertex (96,207);
spd.vertex (96,193);
spd.endShape();
spd.strokeWeight(2);
spd.line (0,200,86,200);   // ligne jaune centrale
//  affichage vecteur acceleration  - il y a 3 cas
//  fleche vers le haut = accel > 1
//  au milieu, juste  rien, (entre +2 et -2)
//  fleche vers le bas = accel < -1

deltaspeed = (speed10s-airspeed);
accel = (200+4*(airspeed-speed10s)); // variable destinee a pointer le bout de la fleche a afficher
if (deltaspeed > 1) {    // premier cas ******************* accel positive, 
spd.line (58,200,58,accel);   // ligne du vecteur acceleration
spd.strokeWeight(1);
spd.beginShape();   // triangle  de l acceleration
spd.vertex (58,accel);
spd.vertex (51,accel+8);
spd.vertex (65,accel+8);
spd.endShape();
}
// deuxieme cas : rien !
if (deltaspeed < -1) {    // troisieme cas ******************* accel negative
spd.line (58,200,58,accel);   // ligne du vecteur acceleration
spd.strokeWeight(1);
spd.beginShape();   // triangle  de l acceleration
spd.vertex (58,accel);
spd.vertex (51,accel-8);
spd.vertex (65,accel-8);
spd.endShape();



//  trait blancs haut et bas
spd.stroke (255);
spd.strokeWeight (2);
spd.line (0,0,100,0);   // cadre blanc haut+bas+droit
spd.line (0,380,100,380);
}

// rappel
/**
                      // variables preconfigurees
float vmo=272;        // Velocity max en palier
float vne=252;        // vitesse a ne pas depasser
float vman=161;         // vitesse de manoeuvre
float greendot= 130;  // Vitesse de meilleure finesse
float vf=128;         // vitesse de deploiement des volets
float stallFspeed=63;  // vitesse de decrochage avec volets
float stallspeed=82; // vitesse de decrochage en lisse

*/
 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 // spd.stroke(255, 0,255);    //  index mauve, a effacer
// spd.strokeWeight(1);
 // spd.line (-100,-100,100,100); line (-100,100,100,-100);  // croix 
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

//noStroke();


/**  
 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  spd.stroke(255, 0,255);    //  index mauve, a effacer
  spd.strokeWeight(2);
  spd.line (-100,-100,100,100);
  spd.stroke(100,250,100);
  spd.line (-100,100,100,-100);  // croix 
  spd.ellipse(0,0,25,25);
  
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 */

 }