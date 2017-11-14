class Lum{
  color c;
  PVector position;//placement on screen
  PVector velocity;//how fast the sentence moves
  float w;//width
  float h;//height
  float Speed = 53.0;
  
  Lum(float tempX, float tempY, float Speed, color tempColor, float tempW, float tempH){
    //float Speed = 3;
    c = tempColor;
    position = new PVector(tempX,tempY);
    velocity = new PVector(Speed,0);
    //velocity = new PVector(9,tempSpeed);
    w = tempW;
    //h = w/2;
    h = tempH;
    
    
  }
  
  void move() {
    position.add(velocity);
    if (position.x > width + w/2) {
      position.x = -w;
    }
  }
  
  void display() {
    fill(c);
    noStroke();
    text("fruit of the Lum!",position.x, position.y, w);
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}