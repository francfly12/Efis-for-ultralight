void decor()
{
pushMatrix();      // matrice centree au milieu du pfd
 translate (280,210);
// stroke(255, 0,255);    //  index mauve, a effacer
// strokeWeight(3);
// line (-100,-100,100,100); line (-100,100,100,-100); 

stroke(255, 255, 0);    //  jaune 
strokeWeight(2);
noFill();
 rect (-5,-5,10,10);  //  boite jaune centrale
fill(0,0,0);   //  fond noir ensuite 
  
beginShape();   // symbole de gauche
vertex (-140,-4);
vertex (-95,-4);
vertex (-95,23);
vertex (-103,23);
vertex (-103,4);
vertex (-140,4);
vertex (-140,-4);
endShape();

beginShape();   // symbole de droite
vertex (140,-4);
vertex (95,-4);
vertex (95,23);
vertex (103,23);
vertex (103,4);
vertex (140,4);
vertex (140,-4);
endShape();

strokeWeight(5);
line (0,190,0,203);  //  index de cap 


 line (0,-192,-13,-203);  //  index central haut
 line (-13,-203,13,-203);   //
 line (13,-203,0,-192);   // 
 
stroke (255,255,255);  //  debut des index blancs
strokeWeight(2);
noFill();
arc (0,0,380,380,(-2*PI/3),(-PI/3));


  pushMatrix ();  //  serie de symboles blanc en roll a droite
 rotate(radians(10));
rect(-2,-190,4,-8);

 rotate(radians(10));  // a 20 degres
rect(-2,-190,4,-8);
 
 rotate(radians(10));  // a 30 degres
rect(-2,-190,4,-12);

rotate(radians(15));  // a 45 degres
line (0,-190,0,-202); 
 
stroke(0, 255, 0);    //  2 barres vertes 
rotate(radians(22));  // a 67 degres 
line (0,-165,0,-175);
line (4,-165,4,-175);



 stroke(255, 255,255);    
 rotate(radians(-77));
rect(-2,-190,4,-8);

 rotate(radians(-10));  // a 20 degres
rect(-2,-190,4,-8);
 
 rotate(radians(-10));  // a 30 degres
rect(-2,-190,4,-12);

rotate(radians(-15));  // a 45 degres
line (0,-190,0,-202); 
 
stroke(0, 255, 0);    //  2 barres vertes 
rotate(radians(-22));  // a 67 degres 
line (0,-165,0,-175);
line (4,-165,4,-175);

  popMatrix();
  popMatrix();
   
  pushMatrix();      // petit trait jaune entre alt et v/s
   translate (500,205);
   stroke(255, 255, 0);    //  jaune 
    strokeWeight(2);
  line (90,0,120,0);
  resetMatrix();
                     //   affichage QNH 
  fill(#05E6FF);        // couleur bleue du texte
  textSize(22);
  strokeWeight(5);
  text (int(qnh), 520,420);  //  tous les textes a afficher
  text ("QNH",520,440);                 
  
                     
 
  /**  
 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  stroke(255, 0,255);    //  index mauve, a effacer
  strokeWeight(2);
  line (-100,-100,500,500);
  stroke(100,250,100);
  line (-100,100,100,-100);  // croix 
  ellipse(0,0,25,25);
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 */
  
  popMatrix();
}