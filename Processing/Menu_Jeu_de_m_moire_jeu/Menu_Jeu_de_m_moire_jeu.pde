PImage img;
float p;
float ini;
float y;
float decalage;
String mode;


void setup() {
  
  mode = "menu";
  img = loadImage("menu_note.jpg");
  size(425,425);
}

void draw() {
   //               //      \\
  //               //  mode  \\
 //                \\  menu  //  
//                  \\      //
  
  if(mode == "menu") {
 
  //ze(425,425);
  background(0);
  image(img,0,0);
  
  p = 80;
  ini = 60;
  y = 60;
  decalage = 0.5*p;
  PFont Police = loadFont("BerlinSansFB-Bold-35.vlw");
  textFont(Police, p);
  
  // LES LIGNES SUIVANTES DONNENT LA COULEUR AU TITRE
  fill(255,0,0);    //rouge
  text("J", ini, y);
  
  decalage = 0.4*p;
  fill(255,255,0);    //jaune
  text("o", ini + decalage, y);
  
  decalage = decalage + 0.55*p;
  fill(0,255,0);    //vert
  text("u", ini + decalage, y);
  
  decalage = decalage + 0.6*p;
  fill(0,255,255);    //cyan
  text("e", ini + decalage, y);
  
  decalage = decalage + 0.5*p;
  fill(0,0,255);    //bleu
  text("r", ini + decalage, y);
  
  fill(255);    //blanc
  textFont(Police, 50);
  text("Instructions", 25, 2*y);
 
}
   //                //      \\
  //                //  mode  \\
 //                 \\  jeu   //  
//                   \\      //
 if (mousePressed && 30<mouseX && mouseX<240 && 3<mouseY&& mouseY <73){
    mode = "jeu";
  }
  
    if (mode == "jeu"){
    size(425, 425);
 background(0);
 fill (255);
 ellipse(width,height, width,width);
rectMode(CENTER);

       //easy
    //rouge
fill(255,0,0);
noStroke();
ellipse(250,90,250,150);
    //jaune
fill(250,255,0);
noStroke();
ellipse(250,500-90,250,150);
    //bleu
fill(0,0,255);
noStroke();
ellipse(500-90,250,150,250);
    //vert
fill(0,255,0);
noStroke();
ellipse(90,250,150,250);
    }


   //                //      \\
  //                //  mode  \\
 //                 \\ instru //  
//                   \\      //

if (mousePressed && 30<mouseX && mouseX<240 && 81<mouseY&& mouseY <120){
    mode = "instru";
}
p = 80;
if (mode == "instru"){
    //size(425, 425);
 background(255);
 fill(0);
 PFont Police = loadFont("BerlinSansFB-Bold-35.vlw");
  textFont(Police, p);
 text(" Suivez le", 10,p);
 text("  rythme!", 10,2*p);
 text("Bonne",100,4*p);
 text("Chance",p,5*p);
 println("instru");
}
}
