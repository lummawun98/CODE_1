//this code was copied fom a website i used as a reference that way 
//i could learn how to use the star function 


float xpos; 
float ypos;
int sz;
float angle; 

void setup() {
  frameRate(12);
  size(400,400);
  smooth();
  xpos =0;
  ypos = 0;
  sz = width/8;
}

void draw() {
  background(0xFF006600);
  
  angle += PI/24;

  pushMatrix();
  translate(width/2,height/2);
  rotate(-angle);
  Star();
  popMatrix();
}

void Star() {

  fill(0xFFFF0000);
  noStroke();

  beginShape();
  vertex(xpos,ypos-sz/2);
  vertex(xpos+sz/6,ypos-sz/6);
  vertex(xpos+sz/2,ypos-sz/11);
  vertex(xpos +sz/4,ypos+sz/8);
  vertex(xpos+sz/3,ypos+sz/2);
  vertex(xpos,ypos+sz/3);
  vertex(xpos-sz/3,ypos+sz/2);
  vertex(xpos-sz/4,ypos+sz/6);
  vertex(xpos-sz/2,ypos-sz/9);
  vertex(xpos-sz/6,ypos-sz/6);
  endShape(CLOSE); 

}
 