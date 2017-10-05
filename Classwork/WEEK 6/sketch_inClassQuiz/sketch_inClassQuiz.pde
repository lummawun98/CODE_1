int x; 
int y; 
int l;
int z;
int size; 
float dist; 
float p;
boolean buttonClicked; 
boolean buttonPressed;



void setup(){
 size(800,600,P3D);
 background(0);
  x = 100; 
  y = height/2;
  l = 100;
  z = height/5;
  size = 100; 
  
}
void draw(){
 lights(); 
 background(0); 
 
 //translate(width/2, height/2);
 
 println(calcDistance(x, y));
 p = map(mouseX, 0, width, 0, 255); 
     
 //cubes
 if(buttonClicked){
 for(int i = -5; i<5; i++){
  for(int j = -5; j<5; j++){
   for(int k = -5; k<5; k++){
    pushMatrix();
    translate(300+i*100, 300+j*100, 300+k*100);
      
    box(20);
    fill(map(i, -5, 5, p, 255), map(j, -5, 5, p, 255), map(k, -5, 5, p, 255));
    popMatrix();
   }
     
   }
  }
 }
 //spheres 
  if(buttonPressed){
    for(int i = -5; i<5; i++){
     for(int j = -5; j<5; j++){
      for(int k = -5; k<5; k++){
    pushMatrix();
    translate(300+i*100, 300+j*100, 300+k*100);
     
    sphere(17);
    noStroke();
    fill(map(i, -5, 5, 0, 255), map(j, -5, 5, 0, 255), map(k, -5, 5, 0, 255));
    popMatrix(); 
      }
     }
    
      }     
  }
  fill(155);
  ellipse(100, y, size, size);
  fill(0,255, 255);
  ellipse(100, z, size, size);
  
} 


void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked;
  }
  
  if(calcDistance(l,z) <= 50){
    buttonPressed = !buttonPressed;
  }
}
  
  float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
  
  
}