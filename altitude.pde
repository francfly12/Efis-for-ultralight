void altitude()

{
//  echelle de 70 px par 380 px
//  180 px pour 500 ft
// une barre tous les 100 ft
//   pente  = 180/500   pixel/feet
//  max 20000 ft

alt.noStroke();
alt.fill(90,90,90);  // fond gris
alt.rect(0,0,70,380);// altitude background



altin=altin+ ((-mouseY+180)/50) ;   // pour tester  XXXXXXXXXXXXXXXXXXXXXXXXXXX
 if (altin>20000) {altin=20000;}  // alt max 20000
 if (altin<0) {altin=0;}  // altin min 0
if (mouseY>450) {altin=altin-100;};
if (mouseY>400) {altin=altin-10;};
if (mouseY>350) {altin=altin-1;};
if (mouseY<50) {altin=altin+100;};
if (mouseY<100) {altin=altin+10;};
if (mouseY<150) {altin=altin+1;};  //  fin test    XXXXXXXXXXXXXXXXXXXXXXXXXXXX

//   *******  petits calculs pour l altitude   ************************************
  althi=int(altin/100);    //  partie gauche alt
  altlo= altin-(althi*100);    // partie droite
  if (altlo>95) {althi=althi+1;}  // petit tweak pour avoir une transition du chiffre en douceur a l approche de 100

 //  *************************************** partie altitude gauche chiffres+echelle roulante *******


calc1 = (altin*180/500)+200;
alt.fill (255);
alt.textSize(25);
//                              //  defilement


if (altin>8000) {        //  pas besoin de tout calculer ...
alt.text ("200",6,-7200+calc1);//40
alt.text ("195",6,-7020+calc1);
alt.text ("190",6,-6840+calc1);//38
alt.text ("185",6,-6660+calc1);
alt.text ("180",6,-6480+calc1);
alt.text ("175",6,-6300+calc1);//35
alt.text ("170",6,-6120+calc1);
alt.text ("165",6,-5940+calc1);
alt.text ("160",6,-5760+calc1);//32
alt.text ("155",6,-5580+calc1);
alt.text ("150",6,-5400+calc1);
alt.text ("145",6,-5220+calc1);//29
alt.text ("140",6,-5040+calc1);
alt.text ("135",6,-4860+calc1);
alt.text ("130",6,-4680+calc1);//26
alt.text ("125",6,-4500+calc1);
alt.text ("120",6,-4320+calc1);
alt.text ("115",6,-4140+calc1);//23
alt.text ("110",6,-3960+calc1);
alt.text ("105",6,-3780+calc1);
alt.text ("100",6,-3600+calc1);//20
alt.text ("095",6,-3420+calc1);
alt.text ("090",6,-3240+calc1);
}
if (altin<9500 ) {
alt.text ("085",6,-3060+calc1);//17
alt.text ("080",6,-2880+calc1);
alt.text ("075",6,-2700+calc1);
alt.text ("070",6,-2520+calc1);
alt.text ("065",6,-2340+calc1);
alt.text ("060",6,-2160+calc1);//12
alt.text ("055",6,-1980+calc1);
alt.text ("050",6,-1800+calc1);
alt.text ("045",6,-1620+calc1);
alt.text ("040",6,-1440+calc1);
alt.text ("035",6,-1260+calc1);     
alt.text ("030",6,-1080+calc1);
alt.text ("025",6,-900+calc1);
alt.text ("020",6,-720+calc1);
alt.text ("015",6,-540+calc1);
alt.text ("010",6,-360+calc1);
alt.text ("005",6,-180+calc1);
alt.text (" 00",6,0+calc1);
}
 
// barres blanches

     //    calcul de position
     calc2 = ((altin*.36) % 36)+11;
 alt.fill(255);  // ne sert a rien
 alt.stroke(255,255,255);  //  couleur blanc du trait

  alt.line (60,calc2-36,70,calc2-36);  //   une barre tous les 100 ft
  alt.line (60,calc2,70,calc2);  //   
  alt.line (60,36+calc2,70,36+calc2);  //   
  alt.line (60,72+calc2,70,72+calc2);  //   = tous les 36 pixels
  alt.line (60,108+calc2,70,108+calc2);  // 
  alt.line (60,144+calc2,70,144+calc2);  //
  alt.line (60,180+calc2,70,180+calc2);  // 
  alt.line (60,216+calc2,70,216+calc2);  //
  alt.line (60,252+calc2,70,252+calc2);  //  
  alt.line (60,288+calc2,70,288+calc2);  //
  alt.line (60,324+calc2,70,324+calc2);  //
  alt.line (60,360+calc2,70,360+calc2);  //

alt.noStroke();      //  pas de bord
alt.fill(0,0,0);     // fond noir  pour effacement   // ********   suite *******
alt.rect (0,180,70,30);  // partie gauche fond altbox
alt.rect (71,165,30,60);// partie droite fond altbox

alt.stroke (255);
alt.strokeWeight (2);
alt.line (0,1,100,1);    //  bord blanc
alt.line (70,0,70,380);
alt.line (0,380,100,380);
alt.stroke (0);
alt.line (0,382,100,382);  // pour effacer completement les textes
alt.stroke(255, 255, 0);    //  jaune 
alt.line(0,179,70,179);    // bord jaune cote gauche
alt.line(0,211,70,211);    // bord jaune  bas
alt.line(71,164,101,164);    // bord jaune  cote droit
alt.line(71,226,101,226);    //
alt.line(101,164,101,226);    //  


     //  ****************** affichage partie gauche alt *****************
   alt.fill(0,255,0);
   alt.strokeWeight (3);
   alt.textSize(25); 
//   textAlign(RIGHT);    // chiffre vert du milieu
   althi1=int(althi);        //  partie gauche alt au format integer, pour l affichage
   if (althi>=100) {alt.text (althi1,18,204);} else {//  // formatage + affichage sur 1 ou 2 ou 3 digits 
     if (althi>=10) {alt.text (althi1,34,204); } else  // 2 digits
         { alt.text (althi1,50,204);}}
         if (althi<0) { alt.fill(0,0,0);alt.noStroke();alt.rect (0,180,70,30);
       alt.fill(255,0,0);alt.text ("NEG",18,204);}  // si negatif
  


}

void altlow ()  //  *********************************  partie droite ; rotation de l echelle alt ***********
{
altlow.fill(90,0,90);  // fond mauve pour voir 
altlow.rect (0,0,30,60);// partie droite fond altbox

 altlow.fill(0,255,0);

  altlow.textSize(20); 
  
  altlow.text ("20",2,-83+altlo); 
  altlow.text ("00",2,-63+altlo);
  altlow.text ("80",2,-43+altlo);
  altlow.text ("60",2,-23+altlo);
  altlow.text ("40",2,-3+altlo);
  altlow.text ("20",2,17+altlo);
  altlow.text ("00",2,37+altlo);    //  defilement
  altlow.text ("80",2,57+altlo);
 
 
 

}

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