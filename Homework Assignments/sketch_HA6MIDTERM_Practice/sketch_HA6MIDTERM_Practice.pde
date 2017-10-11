PFont myFont;

PGraphics pg;
float a = 0.0;//moving circles
float s = 0.0;//moving circles


void setup(){
  size(1000, 700);
  frameRate(2);
  background(random(0,255), random (0,255), random(0,255));
  myFont = createFont("Alba Super", 50);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text("Lum", width/2, height/2);
  strokeWeight(10);
  
  pg = createGraphics(1000, 700);//moving circles
  ellipseMode(CENTER);//moving circles
  frameRate(30);//moving circles
  println(mouseX, mouseY);
  
  
}

void draw(){ 
  //TEXT                                                       
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text("Your Very Own Special Friend!", width/2, height/2);
  strokeWeight(10);
  
  //MOVING CIRCLES
  println(mouseX, mouseY); //moving circles 
  a = a + 0.04;
  s = cos(a)*2;
  translate(width/2, height/2);
  scale(s);
  ellipse (387, 269, 500, 500);//moving circles
  fill(300,109,222);
  //stroke(100,67,120);
  strokeWeight(9); 
  translate(75, 0);//moving circles
  fill(25, 255, 255);
  scale(s);
  ellipse (387, 269, 500, 500);
  
  //STAR BUTTON
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5);
  
}

void star(float x, float y, float radius1, float radius2, int npoints){
  float angle = TWO_PI /npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle){
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
    
  }
  endShape(CLOSE);
  
}