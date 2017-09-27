void setup(){
  size(1000, 700);
  noStroke();
  
  
}


void draw(){
  background (255);
  
  for(int i = 0; i<=width; i+=width/35){
   for(int j= 0; j <=height; j += height/35){
//figure out distance between mouseX, mouseY
//and all our ellipses
     float dist = dist(mouseX, mouseY, i, j);
     
     float c = int(map(dist, 0, 500, 255, 0)); //controlling color
     float s = map(dist, 0, width, 10, 50); // controlling stagnant circles
     
     fill(c, 55, 0, 50);
     ellipse(i, j, s, s);
   }
  }
  
}