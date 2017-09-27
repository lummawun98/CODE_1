PImage webImg;
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
  // Load image from a web server
  webImg = loadImage(url, "jpg");
  
  size(540, 338); 
  x = width/8; 
  y = height/2;
  l = width/8;
  z = height/8;
  size = 70; 
  
}

void draw() {
  
  
  //background(0);
  image(webImg, 0, 0);
  
  if(buttonClicked){
    //background(0); 
    String url = "https://res.cloudinary.com/teepublic/image/private/s--b7DDUOpO--/t_Preview/b_rgb:ffffff,c_limit,f_jpg,h_630,q_90,w_630/v1454304901/production/designs/409097_1.jpg";
    fill(255, 0, 0); 
  }else{
    //background(255); 
    fill(0, 255, 0); 
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