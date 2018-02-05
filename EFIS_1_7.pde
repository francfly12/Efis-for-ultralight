/**
* pfd de fsa

*/

PFont letters;  //  generation des fontes ???
PGraphics att;
PGraphics spd;
PGraphics alt;
PGraphics altlow;  // partie de l altitude qui "roule"
PGraphics hdg;
PGraphics vs;
PFont f;
                      //  variables en entree
float pitch=0;        // pitch en degres ,positif pour nose up
float roll=0;         //  roll positif en virage a droite
float sideslip=0;     // sideslip positif a droite, valeur a calibrer (bille)
float airspeed=200;     //  vitesse en Km/H
float speed10s=0;     // acceleration, vitesse qui sera atteinte dans 10 secondes
float altin=2524;        // altitude recue en pieds
float qnh=1013 ;      // qnh recu
float heading;        //  magnetic heading in degrees
float vertspeed;      //  vertical speed in ft/min 
float vertaff;        // affichage digital valeur v/s

                      // variables preconfigurees
float vmo=272;        // Velocity max en palier
float vne=252;        // vitesse a ne pas depasser
float vman=161;         // vitesse de manoeuvre
float greendot= 130;  // Vitesse de meilleure finesse
float vf=128;         // vitesse de deploiement des volets
float stallFspeed=63;  // vitesse de decrochage avec volets
float stallspeed=82; // vitesse de decrochage en lisse
float althi=0;        //  partie gauche alt (millier de pieds)
int   althi1=0;        //  partie gauche alt au format integer, pour l affichage
float altlo=0;        //  partie droite (dizaines) de l altitude
float calc1=0;        //  utilise pour calcul echelle altitude
float calc2=0;        //  utilise aussi pour calcul echelle altitude
float calc3=0;        // pour l affichage du cap
float calc4=0;        // dans l affichage des barres de cap
float calc5=0;        // dans l affichage des barres de cap
float vario;          // utilise pour l affichage du vario - aiguille v/s
                      // variables programme
float accel=0;        //  variable utilisee uniquement dans le programme pour afficher la fleche
float deltaspeed=0;   //  variable utilisee uniquement dans le programme pour afficher la fleche
float vmo4=-(vmo*4) ;   //  pour calcul position vmo

PImage maskatt;

void setup(){   // partie graphiques fixe
size (800,480,P2D); // size fenetre  correspond au raspberry pi 7 inches display
att = createGraphics(300,380,P2D);
spd = createGraphics(102,382,P2D);
alt = createGraphics(102,382,P2D);
altlow = createGraphics (30,60,P2D);  // partie droite altitude altbox 
hdg = createGraphics (402,61,P2D);
vs = createGraphics (40,380,P2D);    // partie vertical speed
f = createFont("Arial", 30, true); 
att.textFont(f); textFont(f);   //  2 possibilites 
maskatt=loadImage("cacheattitude.png");  //  bord arrondi
}

void draw()
{
  background(0); // fond noir
  //                  partie vitesse *************************************  
  spd.beginDraw();
  spd.smooth();  
  //spd.pushMatrix();  // decalage echelle de vitesse
  spd.translate (0,1);  // top left corner of speed scale
  speed ();  // call the speed scale
  image(spd,5,5,105,387);
 // spd.popMatrix();
  spd.endDraw ();

//                  partie attitude   **************************************  
  att.beginDraw();
  att.smooth();
  att.pushMatrix();  // decalage attitude
  att.translate (0,0);  // top left corner of attitude scale
  attitude();
   image(att,130,20,300,380);
   att.popMatrix();  // 
   att.endDraw();
resetMatrix();    //  on revient en reference ecran en haut a gauche

 decor();        //  partie decor, references autour du PFD ****************
 
 //                      partie Heading ************************************ 
  hdg.beginDraw();
  hdg.smooth();
  hdg.pushMatrix();   // decalage heading
  hdg.translate (0,0);  //  top left corner heading
  heading(); 
  image (hdg,80,415,402,61);
  hdg.popMatrix();
  hdg.endDraw();
  
  
  //                  partie altitude    ************************************
 alt.beginDraw();
 alt.smooth();
  altitude();
   image(alt,490,10,102,382);
  alt.endDraw(); 
  
  altlow.beginDraw();
 altlow.smooth();
 altlow();    //  partie rotation echelle, se trouve a la fin de l onglet altitude
 image(altlow,561,175,30,60);
  altlow.endDraw(); 
 
  //                   partie vertical speed ********************************
  
  vs.beginDraw();
  vs.smooth();
  verticalspeed();
  image(vs,620,15,40,380);
  vs.endDraw();
  
 
 // partie data        ************************************

  data();
 //
  
  
}

 // XXXXXXXXXXXXXXXXXXXXXXXXXXXX TEST XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//  alt.stroke(255, 0,255);    //  index mauve, a effacer
//  alt.strokeWeight(1);
//  alt.line (-100,-100,100,100); line (-100,100,100,-100);  // croix 
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX