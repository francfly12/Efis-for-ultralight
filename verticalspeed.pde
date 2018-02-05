void verticalspeed()

{
    //  calcul de vertspeed pour le test
 vertspeed= vertspeed+ ((-mouseY+200)/20) ;
 if (vertspeed>3000) {vertspeed=3000;}  // vertspeed max 3000    // a effacer car fausserait l affichage
 if (vertspeed<(-3000)) {vertspeed=-3000;}  // vertspeed min -3000    // a effacer
  
                     // calcul de la position de l aiguille = vario  -  non lineaire
 vario= vertspeed;   // position de l aiguille  zone centrale
 if (vertspeed>1000) {vario=1000+((vertspeed-1000)/2);}   // vario entre 1000 et 2000
 if (vertspeed> 2000) {vario=1500+((vertspeed-2000)/4);}  // vario sup a 2000
 if (vertspeed> 2500)  {vario=1625;}                    // c est bien assez !
  
 if (vertspeed<-1000) {vario=-1000+((vertspeed+1000)/2);}   // vario entre -1000 et -2000
  if (vertspeed<-2000) {vario=-1500+((vertspeed+2000)/4);}  // vario inf a -2000 
  if (vertspeed<-2500)  {vario=-1625;}                    // c est bien assez !
  
 vs.pushMatrix();  // bouge 
 //    image(vs,620,35,40,380);
   
 //   vs.stroke(255);  // bord blanc
    vs.noStroke ();
    vs.fill(90,90,90);  // fond gris
    vs.rect(4,20,40,340);// v/s background
    vs.stroke(255);  // bord blanc
    vs.translate (100,190);  // top left corner of v/s scale
    vs.strokeWeight(4);   //  epaisseur trait
    vs.stroke (0,255,0);  //  couleur verte
    if (vario>1500 || vario<-1500) { vs.stroke(250,140,0);}    //  couleur ambre si v/s trop fort
    vs.line (-10,0,-93,-(vario)/10);  //  barre verte ou ambre V/S
    
    vs.stroke(255);
    vs.strokeWeight(4);              // dots blancs tous les 500 ft/min

    vs.line (-100,-152,-95,-152);      // -500 ft/min   // + 2 digits pour aligner sur la valeur digitale
    vs.line (-100,-127,-95,-127);    // +  500 ft/min
    vs.line (-100,-102,-95,-102);      // -500 ft/min
    vs.line (-100,-52,-95,-52);      // -500 ft/min
    vs.line (-100,0,-95,0);      // 00 ft/min
    vs.line (-100,52,-95,52);      // -500 ft/min
    vs.line (-100,102,-95,102);      // -500 ft/min
    vs.line (-100,127,-95,127);      // -500 ft/min
    vs.line (-100,152,-95,152);      // -500 ft/min
    
                             // effacement des angles sup et inferieur
    vs.noStroke ();
    vs.fill(0,0,0);   //  fond noir
    vs.beginShape();  //  haut
    vs.vertex (-95,-170);
    vs.vertex (-60,-170);
    vs.vertex (-60,-100);
    vs.endShape();
    vs.beginShape();  //  bas
    vs.vertex (-95,170);
    vs.vertex (-60,170);
    vs.vertex (-60,100);
    vs.endShape();
    
    // affichage valeur digitale
    vertaff= int (vertspeed/100);
    vs.textSize(18);
    if (vertspeed >200) {   //  partie haute
    vs.noStroke();      // pas de bord
    vs.fill(0,0,0);    // noir
    vs.rect (-97,(-(vario)/10)-3, 95,-25);    // fonds noir
    vs.strokeWeight(2);
    vs.fill(0,255,0);    // texte vert
     if (vario>1500) { vs.fill(250,140,0);}    //  couleur ambre si v/s trop fort
    vs.text (int(vertaff),-85,((-(vario)/10)-8));    // valeur digitale
 
    }
     if (vertspeed <-200) {      // partie basse
    vs.noStroke();      // pas de bord
    vs.fill(0,0,0);    // noir
    vs.rect (-97,(-(vario)/10)+27, 95,-25);    // fonds noir
    vs.strokeWeight(2);
    vs.fill(0,255,0);    // texte vert
     if (vario<-1500) { vs.fill(250,140,0);}    //  couleur ambre si v/s trop fort
    vs.text (abs(int(vertaff)),-85,((-(vario)/10)+22));    // valeur digitale, pas de signe
    }
    
/**  
 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  vs.stroke(255, 0,255);    //  index mauve, a effacer
  vs.strokeWeight(2);
  vs.line (-100,-100,100,100);
  vs.stroke(100,200,100);
  vs.line (-100,100,100,-100);  // croix 
  vs.line (-100,0,0,0);  //  barre
  vs.ellipse(0,0,25,25);
  
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 */
 vs.popMatrix();  //  fin
}