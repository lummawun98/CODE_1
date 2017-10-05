
PFont font;
  
void setup() {
  size(640, 780);
  
  // Create the font
  printArray(PFont.list());
  font = loadFont("Shumi-30.vlw");
  textFont(font);
}

void draw() {
  
  
  
  background(102);
  textAlign(RIGHT);
  drawType(width * 0.25);
  textAlign(CENTER);
  drawType(width * 0.5);
  textAlign(LEFT);
  drawType(width * 0.75);
}

void drawType(float x) {
  //line(x, 0, x, 65);
  //line(x, 220, x, height);
  fill(0);
  text("love yourself,", x, 95);
  fill(51);
  text("brush your teeth", x, 130);
  fill(204);
  text("praise God", x, 165);
  //fill(255);
 // text("lum", x, 210);
}