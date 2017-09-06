void setup(){
  size (800,800);
  background(0);
  
}

void draw(){
  //line(x point 1, y point1, x point2, y point2)
  
  fill(0,10);
  rect(0,0, width, height);
  
  //stroke(random(0,55), random(40,100), random(66,97));
  stroke(255);
  line(width/2, height/2, mouseX, mouseY);
  
}