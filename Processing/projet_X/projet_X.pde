void setup(){
  size(500, 500,P3D);
 background(0);
ellipse(250,250, 490,490);
rectMode(CENTER);
}
void draw(){
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

                  //medium+hard
      //rouge
fill(255,0,0);
noStroke();
ellipse(250,90,140,140);
      //orange
fill(255,150,0);
noStroke();
ellipse(500-110,170,140,140);
      //jaune
fill(250,255,0);
noStroke();
ellipse(500-110,500-180,140,140);
      //vert
fill(0,255,0);
noStroke();
ellipse(250,500-90,140,140);
      //violet bleuclair
fill(0,255,255);
noStroke();
ellipse(110,500-180,140,140);
      //bleu
fill(0,0,255);
noStroke();
ellipse(110,170,140,140);


}

