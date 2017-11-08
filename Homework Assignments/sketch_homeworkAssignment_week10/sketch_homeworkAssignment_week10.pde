//Walker w;
ArrayList<Walker> walkers = new ArrayList<Walker>();

float xPos; 
float yPos; 
float speed; 
float gravity;

void setup(){
  size(800, 600);
  background(100, 0, 110);
  
  xPos = 100;
  yPos = 0;
  speed = 0;
  gravity = 2.6;
  
}

void draw(){
  for(int i=2; i< walkers.size(); i++){
    Walker w = walkers.get(i);
    w.step();
    w.display();
    
   yPos = yPos + speed;
   speed = speed + gravity;
    
  }
  
  
  yPos = yPos + speed;
  speed = speed + gravity;
  
 
  
}

void mousePressed(){
 walkers.add(new Walker(mouseX, mouseY)); 
 
}