//some of the cide used is from another source (specifically, the vertex points for the starts)
//i used references from the processing website and the stuff we learned if class to do the rest

color c;
color b = color(255);
float xpos; 
float ypos;
int sz;
float angle; 
int translateX;
int translateY;
int mouseNumber = 1;
 


void setup(){
  fill(0);
  frameRate(10);
  smooth();
  size(500,500);
  background(255);
  xpos =10;
  ypos = 10;
  sz = width/10;
  translateX = width/2;
  translateY = height/2;

  
}


void draw(){
  background(b);
  
  angle += PI/24;
  
  pushMatrix();
  translate(translateX, translateY);
  rotate(-angle);
  Star();
  popMatrix();

  
  
  //if(mousePressed){ //any key on keyboard no just the mouse
 //fill(random(255), random(255), random(255));
  //}
  
  
 }
 
 
 
 
 
 
 void mousePressed(){ //only draws one ellipse when clicked 
  translateX = int(random(width));
  translateY = int(random(height));
  mouseNumber++;
  b = color(random(250), random(155), random(150));
  println(mouseNumber);
  c = color(random(255), random(255), random(255));
  fill(random(255), random(255), random(255));
 
 
 }
 
 
 void Star() {

  
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
 