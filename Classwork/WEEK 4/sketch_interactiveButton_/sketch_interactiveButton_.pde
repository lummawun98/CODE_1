int x; 
int y; 
int l;
int z;
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonPressed;

//set up a second button 
//do something else when that button is clicked

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2;
  l = width/5;
  z = height/5;
  size = 100; 
}

void draw(){
    
  if(buttonClicked){
    background(0); 
    fill(255, 0, 0); 
  }else{
    background(255); 
    fill(0, 255, 0); 
  }
  
  //ellipse(x, y, size, size);  
  
  println(calcDistance(x, y)); 
  
  if(buttonPressed){
    //background(0); 
    fill(0, 0, 255); 
  }else{
    //background(255); 
    fill(230, 0, 255); 
  }
  ellipse(x, y, size, size);  
  ellipse(l, z, size, size);  
  
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  
  if(calcDistance(l,z) <= 50){
    buttonPressed = !buttonPressed; 
  }
  //calculating distance between second button 
  //hint set up a second boolean 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}