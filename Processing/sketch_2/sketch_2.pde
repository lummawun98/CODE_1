void setup(){ 
  
size(800,500, P3D);
  background(50,70,335); }
  
  
  
 void draw(){
   background(50,70,335);
   println (mouseX,mouseY);
   
   rect(620,115,150,200,30);
   quad(10,30,96,60,180,200,31,100);
   ellipse(200,363,300,200);
   triangle(390,190,390,470,590,250);
   
translate(mouseX, 86, 0); 
rotateY(0);
box(90);

noStroke();
lights();
translate(mouseX,200,0);
sphere(28);
noStroke();
lights();
translate(mouseY,150,0);
sphere(28);


   fill(500,109,222);
   stroke(66,25,44);
   strokeWeight(9); }