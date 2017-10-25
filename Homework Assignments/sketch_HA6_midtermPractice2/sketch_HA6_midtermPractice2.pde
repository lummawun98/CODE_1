//FONT
PFont myFont;
String w;

//CHARACTERS
PImage img0; 
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage imgStart;

//BUTTONS
int a;
int b;
int size;
boolean buttonClicked1;
float dist;

//PAINT BOXES
color[] picker = {#ffdbac, #f1c27d, #e0ac69, #c68642, #8d5524, #FEA7FF, #FFED00, #007CFF, #4FDD3F, #AE48E4, #FF4B21, #FFFFFF, #000000};
color currentColor = #000000;
int brushSize = 10;
int value1 = 1;
int value2 = 2;
int value3 = 3;
int value4 = 4;



void setup(){
  size(1000, 700);
  frameRate(2);
  background(random(0,255), random (0,255), random(0,255));
  myFont = createFont("Alba Super", 50);
  textFont(myFont);
  strokeWeight(10);
  println(mouseX, mouseY);
 
  a= 500;
  b= 300;
  size= 100;
  
  img0= loadImage("Title1.png");
  img1= loadImage("girl one.png");
  img2= loadImage("girl two.png");
  img3= loadImage("girl three.png");
  img4= loadImage("girl four.png");
  imgStart= loadImage("startButton.png");
  
  
}

void draw(){ 
  println(mouseX, mouseY);
  size(1000, 700);
  
  //BACKGROUND
  if (frameCount % -1 == 0){
  background(random(0,255), random (0,255), random(0,255));
}  
  //HOME PAGE and PAGE ONE 
    image(img0, 0, 50);
    //image(imgStart, 0, 0);
    
  //CHARACTER PAGE and PAGE TWO
  //BUTTON ONE 
  if(buttonClicked1){ 
    background(255);
    if (frameCount % -1 == 0);
    fill(89, 90, 200);
    textSize(30);
    String w= "Please select your special friend by pressing";
    String v= " the letter underneath her.";
    text(v, 290, 165);
    text(w, 200, 122);
    fill(random(0,255), random (0,255), random(0,255));
    textSize(30);
    text("INSTRUCTIONS:", 425, 57);
    textSize(20);
    text("LET'S GO!", 439, 677);
    textSize(30);
    text("A", 126, 635);
    text("B", 370, 639);
    text("C", 604, 635);
    text("D", 849, 635);
    //CHARACTERS AND BOXES
    rect(30, 515, 200, 82);//first box
    rect(270, 515, 200, 82);//second box
    rect(510, 515, 200, 82);//third box
    rect(750, 515, 200, 82);//fourth box
    if (frameCount % -1 == 0);
    
    //CHARACTER NAMES
    fill(25);
    text("Jena", 98, 562);//girl one
    text("Toni", 339, 565);//girl two
    text("Layla", 570, 567);//girl three
    text("Chloe", 809, 567);//girl four
    //CHARACTERS
    image(img1, -37, 185, 305, 305);
    image(img2, 195, 185, 315, 315);
    image(img3, 475, 195, 315, 315);
    image(img4, 771, 195, 290, 290);   
  }
    fill(255, 0, 0);
    ellipse(a, b, size, size);
    //image(imgStart, a, b, size, size);
    
  }
  
void mousePressed(){
 
  if(calcDistance(a,b) <= 50){
    buttonClicked1 = !buttonClicked1; 
  }
  
    //PAINT PICKER BOXES
   //clear the current drawing
  if((mouseX > 450) && (mouseY > 450)){
   background(255); 
  }
  
  //change color to red
  if((mouseX < 50) && (mouseY > 450)){
   currentColor = picker[0]; 
  }
  
  //change color to orange
  if((mouseX > 50) && (mouseX < 100) && (mouseY > 450)){
   currentColor = picker[1]; 
  }
  
  //change color to yellow
  if((mouseX > 100) && (mouseX < 150) && (mouseY > 450)){
   currentColor = picker[2]; 
  }
 
  //chanGe color to green
  if((mouseX > 150) && (mouseX < 200) && (mouseY > 450)){
   currentColor = picker[3]; 
  }
  
   //change color to blue
  if((mouseX > 200) && (mouseX < 250) && (mouseY > 450)){
   currentColor = picker[4]; 
  } 
  
   //change color to purple
  if((mouseX > 250) && (mouseX < 300) && (mouseY > 450)){
   currentColor = picker[5]; 
  } 
  
  //change color to white
  if((mouseX > 300) && (mouseX < 350) && (mouseY > 450)){
   currentColor = picker[6]; 
  } 
  
   //change color to black
  if((mouseX > 350) && (mouseX < 400) && (mouseY > 450)){
   currentColor = picker[7]; 
  } 
  
  
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}



void keyPressed() {
  background(255);
  
  //LETTER SELECTION FOR EACH CHARACTER  
  if(keyPressed){
   if (key == 'a' || key =='A') 
    image(img1, 250, 30, 550, 550);
  } else {
   background(255); 
  }
  if(keyPressed){
   if (key == 'b' || key =='B') 
    image(img2, 240, 30, 550, 550);
  } else {
   background(255); 
  }
  if(keyPressed){
   if (key == 'c' || key =='C') 
    image(img3, 240, 30, 550, 550);
  } else {
   background(255); 
  }
  if(keyPressed){
   if (key == 'd' || key =='D') 
    image(img4, 250, 20, 550, 550);
  } else {
   background(255); 
  }
  
  //PAINT PICKER BOXES
  noFill();
  //rect(width-25, 50, 50,100);
  textSize(37);
  text("clear", width-92, height - 13);
  
  for (int i = 0; i < picker.length; i++){
    fill(picker[i]);
    rectMode(CENTER);
    noStroke();
    rect(25 + (i * 70), height, 70, 120);
  }
  
  if(mousePressed){
  fill(currentColor);
  noStroke();
  ellipse(mouseX, mouseY, brushSize , brushSize);
  }
  //println("x pos: " + mouseX + " y pos :" + mouseY);

}


    
  
  