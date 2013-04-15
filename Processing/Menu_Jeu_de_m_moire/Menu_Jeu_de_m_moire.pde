PImage img;
float p;
float ini;
float y;
float decalage;
String mode;


void setup() {
  img = loadImage("menu_note.jpg");
  mode = "menu";
 
}

void draw() {
  
  if(mode == "menu") {
  size(425,425);
  background(0);
  image(img,0,0);
  
  p = 80;
  ini = 60;
  y = 60;
  decalage = 0.5*p;
  PFont Police = loadFont("BerlinSansFB-Bold-35.vlw");
  textFont(Police, p);
  
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
}

