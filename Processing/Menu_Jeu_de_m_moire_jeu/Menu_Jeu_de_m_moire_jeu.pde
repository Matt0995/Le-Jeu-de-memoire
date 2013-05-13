PImage img;
float p;
float ini;
float y;
float decalage;
String mode;
float h;   //hauteur fenetre
float l;  //latrgeur fenetre
float dy; //decalage y
float x;
float z;

void setup() {
  
  mode = "menu";
  img = loadImage("menu_note.jpg");
  size(425,425);
  
l=212;
h=425;
dy=80;
x=220;
z=130;
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
if (mode == "menu"){
 if (mousePressed && 30<mouseX && mouseX<240 && 3<mouseY&& mouseY <73){
    mode = "jeu";
  }
}
    if (mode == "jeu"){
    //size(425,425);
 background(0);
 fill (255);
 ellipse(l,l,h,h);
rectMode(CENTER);


 
fill(0);
  beginShape();
  vertex(0+l, -50+l);
  vertex(14+l, -20+l);
  vertex(47+l, -15+l);
  vertex(23+l, 7+l);
  vertex(29+l, 40+l);
  vertex(0+l, 25+l);
  vertex(-29+l, 40+l);
  vertex(-23+l, 7+l);
  vertex(-47+l, -15+l);
  vertex(-14+l, -20+l);
  endShape(CLOSE);
       //easy
    //rouge
fill(255,0,0);
noStroke();
ellipse(l,dy,x,z);
    //jaune
fill(250,255,0);
noStroke();
ellipse(l,h-dy,x,z);
    //bleu
fill(0,0,255);
noStroke();
ellipse(h-dy,l,z,x);
    //vert
fill(0,255,0);
noStroke();
ellipse(dy,l,z,x);
    }

   //                //      \\
  //                //  mode  \\
 //                 \\ instru //  
//                   \\      //
if (mode == "menu"){
if (mousePressed && 30<mouseX && mouseX<240 && 81<mouseY&& mouseY <120){
    mode = "instru";
}
}
p = 80;
if (mode == "instru"){
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
