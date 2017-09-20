PGraphics pg;

float a = 0.0;//bigger circles 
float s = 0.0;//bigger circles 

float angle;//smaller circles
float jitter;//smaller circles


void setup(){
  size (900,600);
  pg = createGraphics(800, 500);
  background (0);
  ellipseMode(CENTER); //the two big circles coming from the sides
  frameRate(20);
  println(mouseX, mouseY); 
  
  ellipseMode(CENTER); //the small one that's bouncing around 
  
  
}

void draw(){
  
  ellipse(mouseX, mouseY, 30, 55);//circles that move with mouse
  
   fill(0);
   stroke(255);
   strokeWeight(3); 
  
  pg.beginDraw();//circles that move with mouse (PGraphics command)
  //pg.background(51);
  pg.noFill();
  pg.stroke(255);
  pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  pg.endDraw();
  
  ellipse(random(width), random(height), 2, 2);//pink random star like dots
  fill(255, 251, 0); 
  stroke(0);
  
  println(mouseX, mouseY); //bigger circles 
  a = a + 0.04;
  s = cos(a)*2;
  translate(width/2, height/2);
  scale(s);
  
  ellipse (387, 269, 500, 500);//bigger circles 
  fill(300,109,222);
  //stroke(100,67,120);
  strokeWeight(9); 
  
  translate(75, 0);//bigger circles 
  fill(25, 255, 255);
  scale(s);
  ellipse (387, 269, 500, 500);
  
  if (second() %10 == 2) { //smaller circles
    jitter = random(6, 3);
  }
  angle = angle/2 + jitter/2;
  float random = cos(angle/2);
  translate(random/2, random/2);
  rotate(random);
  ellipse(30, 30, 30, 30);//the small one that's bouncing around
  fill(225, 0, 212);
  
  ellipse(random(width), random(height), 2, 2);//pink random star like dots
  
  //ellipse(mouseX, mouseY, 55, 55);//circles that move with mouse
  
  // fill(0);
  // stroke(255);
  // strokeWeight(3); 
  
  //pg.beginDraw();//circles that move with mouse (PGraphics command)
  ////pg.background(51);
  //pg.noFill();
  //pg.stroke(255);
  //pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  //pg.endDraw();
  
  
  
  
  
}