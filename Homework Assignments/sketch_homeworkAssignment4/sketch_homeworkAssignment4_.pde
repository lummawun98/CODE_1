PImage webImg;
PImage webImg2;
int x; 
int y; 
int l;
int z;
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonPressed;


void setup() {
  size(540,338);
  String url = "https://blaquefaguette.files.wordpress.com/2012/06/hwt-4.jpg";
  String url2 = "https://ih0.redbubble.net/image.189678229.6639/flat,800x800,070,f.u1.jpg";
  // Load image from a web server
  webImg = loadImage(url, "jpg");
  webImg2 = loadImage(url2, "jpg");
  image(webImg, 0, 0);
  size(540, 338); 
  x = width/8; 
  y = height/2;
  l = width/8;
  z = height/8;
  size = 70; 
  
}

void draw() {
  
  
  //background(0);
  
  
  if(buttonClicked){
    //background(0); 
    fill(255, 0, 0); 
    image(webImg2, 0, 0, width, height);
  }else{
    //background(255); 
    fill(0, 255, 0); 
    image(webImg, 0, 0, width, height);
  }
  
  //ellipse(x, y, size, size);  
  
  println(calcDistance(x, y)); 
  
  if(buttonPressed){
    //background(0); 
    fill(0, 0, 255); 
  }else{
    //background(255); 
    fill(230, 0, 255); 
  }
  ellipse(x, y, size, size);  
  ellipse(l, z, size, size);  

  
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  
  if(calcDistance(l,z) <= 50){
    buttonPressed = !buttonPressed; 
  }
  //calculating distance between second button 
  //hint set up a second boolean 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}