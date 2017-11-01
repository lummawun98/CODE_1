ArrayList<Particle> particles;
String s = "LOVE YOURSELF";

PVector position; 
PVector velocity; 

float r, g, b; 
int radius; 
 
void setup() {
  size(1100, 700);
  particles = new ArrayList<Particle>();
 //smooth(); //smoothes the edges of any shape
  String s = "lum is dope";
  position = new PVector( width/5, height/2); 
  velocity = new PVector(15, 6); 
  radius = 100; 
  
}
 
void draw() {
 fill(0, 10); 
  rect(0, 0, width, height);
  //background(0);

  for (int i=0; i<particles.size(); i++) {
    Particle p = particles.get(i);
    p.run();
    p.gravity();
    p.display();
 
    
    if (p.y>height) {
      p.bounce();
    }
    
    if(p.x<0 || p.x>width){
      p.sideBounce();
    }
    
    if(p.y<0){
      particles.remove(i);
    }
  }
  
  position.add(velocity); 
  
  if( position.x >= (width- radius/2) || position.x <= radius/2){
    velocity.x = velocity.x *-1; 
  }
  if( position.y >= (height-radius/2) || position.y <= radius/2){
    velocity.y = velocity.y *-1 ; 
  }
  
  if( position.x== (width- radius/2) || position.x== radius/2 ){
    r = random(0,255); 
    g = random(0, 255); 
    b = random(0, 255); 
  }
  
  if( position.y>= (height- radius/2) || position.y<= radius/2 ){
     r = random(0,255); 
     g = random(0, 255); 
     b = random(0, 255); 
  }
  
    noStroke();   
    fill(r, g, b); 
    ellipse(position.x , position.y, radius, radius); 
  
 
}

 
void mousePressed() {
  
  particles.add(new Particle()); 
}
 

class Particle {
  float x; 
  float y;
  
  float xspeed;  
  float yspeed;
  
  float size;

  int c;
  int r;
  int g;
  int b;

  Particle() {
    x = mouseX;
    y = mouseY;
    
    xspeed = random(-5, 5); 
    yspeed = random(1, 5);
    
  }
 
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }
 
  void  gravity() { 
    yspeed += 0.05;
    
  }
  
  void bounce(){
    yspeed = -yspeed;
    
  }
  
  void sideBounce(){
    xspeed = -xspeed;
  }
 
  void display() {
    
    c = (int) (abs(xspeed) + abs(yspeed))*10 + 30;
    
    r = 250 - c;
    g = c;
    b = c + 40;
    
    noStroke();
    fill(r,g,b);

    if(abs(xspeed) > abs(yspeed)){
      size = abs(xspeed)*5 + 5;
    }else{
      size = abs(yspeed)*5 + 5;
    }

    fill(random(0, 255),random(0, 255),random(0, 255));
    text(s, x, y);

  }
}