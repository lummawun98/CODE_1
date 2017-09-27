int a;
int b;
int z;
int size;
float dist;
boolean buttonPressed;

void setup(){
  size(400,400);
  a= width/2;
  b= height/2;
  size= 50;
  
}

void draw(){
  
  if(buttonPressed){
   background(255);
   fill(0,0,255);
  }else{
      background(0);
      fill(255,0,0);
  println(calcDistance(a,b));
    
  }
  fill(255, 0, 0);
  ellipse(width/2, height/2, size, size);
  //fill(255, 0, 0);
  }
  
void mousePressed(){
  if(calcDistance(a,b) <=50){
    buttonPressed = !buttonPressed;
  }
  
}

float calcDistance(int xPos, int yPos){
 dist = dist(mouseX,mouseY,xPos,yPos);
 return dist; 
  
}