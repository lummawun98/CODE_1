PImage webImg;



void setup() {
  size(540,338);
  String url = "https://blaquefaguette.files.wordpress.com/2012/06/hwt-4.jpg";
  // Load image from a web server
  webImg = loadImage(url, "jpg");
  
  size(540, 338); 
  
  
}

void draw() {
  
  
  background(0);
  image(webImg, 0, 0);
  
}