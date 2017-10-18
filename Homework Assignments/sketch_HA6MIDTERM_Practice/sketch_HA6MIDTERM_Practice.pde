PFont myFont;
String w;

PImage img0; 
PImage img1;
PImage img2;
PImage img3;
PImage img4;

int a;
int b;
int c;
int d;
int size;
boolean buttonClicked1;
boolean buttonClicked2;
float dist;

int value = 0;

color[] picker = {#FF0000, #FF8100, #FFD915, #30EB13, #0B2C79, #4C0679, #FFFFFF, #000000};
color currentColor = #000000;
int brushSize = 10;




void setup(){
  size(1000, 700);
  frameRate(2);
  background(random(0,255), random (0,255), random(0,255));
  myFont = createFont("Alba Super", 50);
  textFont(myFont);
  strokeWeight(10);
  println(mouseX, mouseY);
  
  
  a= width/2;
  b= height/2;
  c= width/3;
  d= height/3;
  size= 100;
  
  img0= loadImage("Title1.png");
  img1= loadImage("girl one.png");
  img2= loadImage("girl two.png");
  img3= loadImage("girl three.png");
  img4= loadImage("girl four.png");
  
  
}

void draw(){ 
  println(mouseX, mouseY);
  size(1000, 700);
  
  //fill(value);
  //rect(1000, 700, 0, 0);
  
  //BACKGROUND
  if (frameCount % -1 == 0){
  background(random(0,255), random (0,255), random(0,255));
}  
  
  //BUTTON ONE
  if(buttonClicked1){
    image(img0, 0, 50);
  }
    ellipse(a, b, size, size);
  
  //BUTTON TWO
  if(buttonClicked2){ 
    background(255);
    if (frameCount % -1 == 0);
    fill(89, 90, 200);
    String w= "Please select your special friend to begin.";
    text(w, 9, 192);
    fill(random(0,255), random (0,255), random(0,255));
    text("INSTRUCTIONS:", 357, 123);
    //CHARACTERS AND BOXES
    rect(30, 557, 200, 82);//first box
    rect(270, 557, 200, 82);//second box
    rect(510, 557, 200, 82);//third box
    rect(750, 557, 200, 82);//fourth box
    if (frameCount % -1 == 0);
    
    //GIRLS NAMES
    fill(25);
    text("Jena", 69, 610);//girl one
    text("Toni", 309, 610);//girl two
    text("Layla", 546, 610);//girl three
    text("Chloe", 789, 610);//girl four
    //GIRLS 
    
    image(img1, -37, 230, 305, 305);
    image(img2, 195, 225, 315, 315);
    image(img3, 475, 230, 315, 315);
    image(img4, 771, 235, 290, 290);
  
    
  }
    fill(255, 0, 0);
    ellipse(c, d, size, size);
  
  
  }
  
  
 
void mousePressed(){
  if(calcDistance(a,b) <= 50){
    buttonClicked1 = !buttonClicked1; 
  }

  if(calcDistance(c,d) <= 50){
    buttonClicked2 = !buttonClicked2; 
  }

  //calculating distance between second button 
  //hint set up a second boolean 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}

//void keyPressed(){
// background(0);
 
 
//}

void mouseClicked(){
 if (value == 0) {
   value = 255;
 } else {
   value = 0;
 }
  
}


    
  
  