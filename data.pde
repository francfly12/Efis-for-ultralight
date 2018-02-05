void data ()

{

//att.background(#0096c9);
  stroke(255);
// fond noir

  noFill ();
 
  pushMatrix();      // matrice en haut a gauche de la zone
  translate (680,5);
  rect(0,0,115,470);// data background
   translate (5,0);
  stroke(#0096c9);    //  couleur bleu roi 
  strokeWeight(2);
  fill(#0096c9);        // couleur bleue du texte
  textSize(10);
  text ("variables", 10,15);  //  tous les textes a afficher
  text ("pitch/4",0,30);  text (pitch/4, 50, 30);   
  text ("roll",0,40);     text (roll, 50, 40); 
  text ("airspeed",0,50);     text (airspeed,50,50);  // a effacer
  text ("speed10s",0,60);     text (speed10s,50,60);  //  effacer
  text ("altin",0,70);     text (altin,50,70);
  text ("calc2",0,80);     text(calc2, 50,80);
  text ("althi",0,90);     text (althi,50,90);
  text ("altlo",0,100);     text (altlo,50,100);
  text ("heading",0,110);     text (heading,50,110);    // effacer
  text ("calc5",0,120);     text(calc5,50,120); // effacer
  text ("vertspeed",0,130);     text(vertspeed,50,130); //  a effacer
  text ("vario",0,140);     text(vario,50,140); //  a effacer
  text ("vertaff",0,150);     text(vertaff,50,150); //  a effacer
 

 
 /**  
 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  alt.stroke(255, 0,255);    //  index mauve, a effacer
  alt.strokeWeight(2);
  alt.line (-100,-100,500,500);
  alt.stroke(100,250,100);
  alt.line (-100,100,100,-100);  // croix 
  alt.ellipse(0,0,25,25);
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
*/
  
  popMatrix();


}