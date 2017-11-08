//Walker w;
ArrayList<Walker> walkers = new ArrayList<Walker>();


void setup(){
  size(800, 600);
  //w = new Walker(width/2, height/2);
  background(0, 0, 100);
  
}

void draw(){
  for(int i=0; i< walkers.size(); i++){
    Walker w = walkers.get(i);
    w.step();
    w.display();
    
    
  }
  //w.step();
  //w.display();
  
}

void mousePressed(){
 walkers.add(new Walker(mouseX, mouseY)); 
 
}