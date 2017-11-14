class Rabbit {
  color c;
  //float x;
  //float y;
  PVector position;
  PVector velocity;
  //float speed;
  float w;
  float h;
  
  Rabbit(float tempX, float tempY, float tempSpeed, color tempColor, float tempW){
    c = tempColor;
    //x = tempX;
    //y = tempY;
    position = new PVector(tempX,tempY);
    //speed = tempSpeed;
    velocity = new PVector(tempSpeed,0);
    w = tempW;
    h = w/2;
  }
  void move() {
    //x = x + speed;
    position.add(velocity);
    if (position.x > width + w/2) {
      position.x = -w;
    }
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(position.x, position.y, w, h);
    ellipse(position.x + w/5, position.y-h/2, h/4, w/2);
    ellipse(position.x + w/3, position.y-h/2, h/4, w/2);
  }
}