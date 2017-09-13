PGraphics pg;

void setup() {
  size (800, 600);
  pg = createGraphics(800, 600);
}

void draw() {
  //println(mouseX, mouseY); // shows coordinates in println
  //fill(243, 18, 153); //background color overall
  //rect(0, 0, width, height); //replacement for background color
  ////fill(255);
  //stroke(255, 255, 0);
  ellipse(mouseX, mouseY, 55, 55);
  //fill(9, 61, 219); //?? not working 
  //translate(mouseX,200,0); 
  //ellipse (400, 400, 400, 400);

   fill(500,109,222);
   stroke(66,25,44);
   strokeWeight(9); 

  pg.beginDraw();
  //pg.background(51);
  pg.noFill();
  pg.stroke(255);
  pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  pg.endDraw();
 
 image(pg, 120, 60);
 }
 