void attitude()

{
  att.background(#0096c9); // fond bleu pour cette partie
  // calcul de pitch et roll, sidesplip   pour le test
  pitch=(mouseY-195)*2;// attention, a calibrer
  roll= (mouseX/2) -140;
  att.textSize(12);
 // att.text (pitch/4, 40, 50);  // pour test uniquement
//  att.text(roll, 40, 60);    // idem
 // att.text (airspeed,40,70);  // a effacer
 // att.text (speed10s,40,80);  //  effacer
 // att.text (altin,100,50);
//  att.text(calc2, 100,60);
 // att.text (althi,100,60);
//  att.text (altlo,100,70);
 // att.text (heading, 80,70);    // effacer
 // att.text(calc5, 80,60); // effacer
 //  att.text(vertspeed,80,75); //  a effacer
 //  att.text(vario,130,75); //  a effacer
 //  att.text(vertaff,130,60); //  a effacer
   
  att.textSize(20);
  att.pushMatrix();           //  rotations de la matrice
  att.translate(150, 190);
  att.rotate(radians(roll));
  att.pushMatrix();
  att.translate (0, pitch);
  att.stroke (250);
  att.fill(255);  // couleur blanc du texte

  att.strokeWeight (2);
  // lignes
  // note : pour l espacement: 10 degres correspondent a 40 pixels
  
  att.line (-20, -780, 20, -780);  //   __
  att.line (-30, -760, 30, -760);  //  ____
  att.line (-20, -740, 20, -740);  //    __
  att.line (-50, -720, 50, -720);  // ______  90
  att.line (-20, -700, 20, -700);  //   __
  att.line (-30, -680, 30, -680);  //  ____
  att.line (-20, -660, 20, -660);  //    __
  att.line (-50, -640, 50, -640);  // ______  80
  att.line (-20, -620, 20, -620);  //   __
  att.line (-30, -600, 30, -600);  //  ____
  att.line (-20, -580, 20, -580);  //    __
  att.line (-50, -560, 50, -560);  // ______  70
  att.line (-20, -540, 20, -540);  //   __
  att.line (-30, -520, 30, -520);  //  ____
  att.line (-20, -500, 20, -500);  //    __
  att.line (-50, -480, 50, -480);  // ______  60
  att.line (-20, -460, 20, -460);  //   __
  att.line (-30, -440, 30, -440);  //  ____
  att.line (-20, -420, 20, -420);  //    __
  att.line (-50, -400, 50, -400);  // ______  50
  att.line (-20, -380, 20, -380);  //   __
  att.line (-30, -360, 30, -360);  //  ____
  att.line (-20, -340, 20, -340);  //    __
  att.line (-50, -320, 50, -320);  // ______  40
  att.line (-20, -300, 20, -300);  //   __
  att.line (-30, -280, 30, -280);  //  ____
  att.line (-20, -260, 20, -260);  //    __
  att.line (-50, -240, 50, -240);  // ______  30
  att.line (-20, -220, 20, -220);  //   __
  att.line (-30, -200, 30, -200);  //  ____
  att.line (-20, -180, 20, -180);  //    __
  att.line (-50, -160, 50, -160);  //  ______  20
  att.line (-20, -140, 20, -140);  //    __
  att.line (-30, -120, 30, -120);  //   ____
  att.line (-20, -100, 20, -100);  //    __ 
  att.line (-50, -80, 50, -80);  //  ______  10
  att.line (-20, -60, 20, -60);  //    __
  att.line (-30, -40, 30, -40);  //   ____
  att.line (-20, -20, 20, -20);  //    __
  att.line (-400, 0, 400, 0);  // ligne centrale
  att.line (-2, -2, -2, 2);  // plot central

  att.fill(255);

  //att.noStroke();  // pas de bord
  att.fill(#976300); // marron
  att.rect(-400, 0, 800, 1000);// brown part ******************** milieu *********

  att.stroke (250);
  att.strokeWeight (2);

  att.rect (-2, -2, 4, 4) ; //plot central
  //att.line (0, -300, 0, 300);  //  axe vertical

  att.line (-20, 20, 20, 20);  //    __
  att.line (-30, 40, 30, 40);  //   ____
  att.line (-20, 60, 20, 60);  //    __
  att.line (-50, 80, 50, 80);  // ______  10
  att.line (-20, 100, 20, 100);  //   __
  att.line (-30, 120, 30, 120);  //  ____
  att.line (-20, 140, 20, 140);  //    __
  att.line (-50, 160, 50, 160);  //  ______  20
  att.line (-20, 180, 20, 180);  //    __
  att.line (-30, 200, 30, 200);  //   ____
  att.line (-20, 220, 20, 220);  //    __ 
  att.line (-50, 240, 50, 240);  //  ______  30
  att.line (-20, 260, 20, 260);  //    __
  att.line (-30, 280, 30, 280);  //   ____
  att.line (-20, 300, 20, 300);  //    __ 
  att.line (-50, 320, 50, 320);  //  ______  40
  att.line (-20, 340, 20, 340);  //    __
  att.line (-30, 360, 30, 360);  //   ____
  att.line (-20, 380, 20, 380);  //    __ 
  att.line (-50, 400, 50, 400);  //  ______  50
  att.line (-20, 420, 20, 420);  //    __
  att.line (-30, 440, 30, 440);  //   ____
  att.line (-20, 460, 20, 460);  //    __ 
  att.line (-50, 480, 50, 480);  //  ______  60
  att.line (-20, 500, 20, 500);  //    __
  att.line (-30, 520, 30, 520);  //   ____
  att.line (-20, 540, 20, 540);  //    __ 
  att.line (-50, 560, 50, 560);  //  ______  70
  att.line (-20, 580, 20, 580);  //    __
  att.line (-30, 600, 30, 600);  //   ____
  att.line (-20, 620, 20, 620);  //    __ 
  att.line (-50, 640, 50, 640);  //  ______  80
  att.line (-20, 660, 20, 660);  //    __
  att.line (-30, 680, 30, 680);  //   ____
  att.line (-20, 700, 20, 700);  //    __ 
  att.line (-50, 720, 50, 720);  //  ______  90
  att.line (-20, 740, 20, 740);  //    __
  att.line (-30, 760, 30, 760);  //   ____
  att.line (-20, 780, 20, 780);  //    __ 
  
  

  att.fill(255);  // couleur blanc du texte
  
  att.text("90", - 95, -713); 
  att.text("90", 67, -713);
  att.text("80", - 95, -633); 
  att.text("80", 67, -633); 
  att.text("70", - 95, -553); 
  att.text("70", 67, -553);
  att.text("60", - 95, -473); 
  att.text("60", 67, -473);
  att.text("50", - 95, -393); 
  att.text("50", 67, -393); 
  att.text("40", - 95, -313); 
  att.text("40", 67, -313);
  att.text("30", - 95, -233); 
  att.text("30", 67, -233); 
  att.text("20", - 95, -153); 
  att.text("20", 67, -153); 
  att.text("10", - 95, -73); 
  att.text("10", 67, -73);
  att.text("10", - 95, 88); 
  att.text("10", 67, 88);
  att.text("20", - 95, 168); 
  att.text("20", 67, 168);
  att.text("30", - 95, 248); 
  att.text("30", 67, 248);
  att.text("40", - 95, 328); 
  att.text("40", 67, 328);
  att.text("50", - 95, 408); 
  att.text("50", 67, 408);
  att.text("60", - 95, 488); 
  att.text("60", 67, 488);
  att.text("70", - 95, 568); 
  att.text("70", 67, 568);
  att.text("80", - 95, 648); 
  att.text("80", 67, 648);
  att.text("90", - 95, 728); 
  att.text("90", 67, 728);



  att.strokeWeight(10);
  att.stroke(255, 0, 0);    // V rouges
  
  att.line(-70, -710, 0, -660);
  att.line(0, -660, 70, -710);
  att.line(-70, -730, 0, -680);
  att.line(0, -680, 70, -730);
  att.line(-60, -510, 0, -460);
  att.line(0, -460, 60, -510);
  att.line(-60, -530, 0, -480);
  att.line(0, -480, 60, -530);
  att.line(-50, -330, 0, -280);
  att.line(0, -280, 50, -330);
  att.line(-50, -350, 0, -300);
  att.line(0, -300, 50, -350);
  //
  att.line(-50, 340, 0, 290);
  att.line(0, 290, 50, 340);
  att.line(-50, 360, 0, 310);
  att.line(0, 310, 50, 360);
  att.line(-60, 540, 0, 490);
  att.line(0, 490, 60, 540);
  att.line(-60, 560, 0, 510);
  att.line(0, 510, 60, 560);
  att.line(-70, 740, 0, 690);
  att.line(0, 690, 70, 740);
  att.line(-70, 760, 0, 710);
  att.line(0, 710, 70, 760);
  
  
  
  

  att.strokeWeight(2);     //  limites vertes 15 degres nose down, 25 degres nose up
  att.stroke(0, 255, 0);
  att.line (-40, -202, -25, -202); 
  att.line (25, -202, 40, -202); //  _  _
  att.line (-40, -198, -25, -198); 
  att.line (25, -198, 40, -198); //  _  _
  att.line (-40, 118, -25, 118); 
  att.line (25, 118, 40, 118); //  _  _
  att.line (-40, 122, -25, 122); 
  att.line (25, 122, 40, 122); //  _  _

  att.popMatrix();   // fin de translation

  att.strokeWeight(2);     // caches sup et inf
  att.stroke(255);           // bord blanc
  att.fill(#0096c9);         // bleu
  att.rect(-200, -200, 400, 40);    //blue cover *******************
  att.fill(#976300);             // marron
  // att.rect(-200,350,400,50);    // brown cover
  att.rect(-200, 175, 400, 50);    // brown cover

  att.stroke(255, 255, 0);    //  jaune     //  roll+sideslip indicator
  att.strokeWeight(3);
  att.line(0, -188, -10, -178);  
  att.line(0, -188, 10, -178);   //\\ roll
  att.line(-10, -178, 10, -178);                //   roll  ___
  att.line(-13, -174, 13, -174);  
  att.line(-18, -168, 20, -168);  // === sideslip
  att.line(-13, -174, -18, -168); 
  att.line(13, -174, 20, -168);  // \\
  
   att.popMatrix();
   
  att.mask(maskatt);
 
 
 
}