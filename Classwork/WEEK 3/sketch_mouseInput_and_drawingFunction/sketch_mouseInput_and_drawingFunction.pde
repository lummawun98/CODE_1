color c; //color integer 

int xPos, yPos;
int xVel; 


void setup(){
 size (1000,1000);
 smooth();
 background(255);
 xVel= 10;
  
}

void draw(){
  //c = color(random(255), random(255), random(255)); //not needed in bot mousePressed and here
  //drawShip(c, mouseX, mouseY, 30);
  xPos += xVel;
}

void mousePressed(){
  c = color(random(255), random(255), random(255));
  int s = int(random(20, 200));
  drawShip(c, mouseX, mouseY, s);
  
  
}

void drawShip(color col, int x, int y, int size){ //set up parameters for your item you're creating
  noStroke();
  fill(col);
  ellipse(x, y, size*2, size);
  ellipse(x, y-(size/2), size, size);
  
  
}