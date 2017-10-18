PImage img;
int pointillize;

void setup(){
  size(800, 700);
  img = loadImage("Rugrats.png");
  background(255);
  smooth();
  frameRate(300);
  
  
}

void draw(){
  loadPixels();
  
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc= x+y*img.width;
  
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  fill(r, g, b, 255);
  noStroke();
  ellipse(x, y, 10, 10);
  
}