boolean keepScreen = true;

void setup(){
  background(255);
  size(640, 640);
}
void draw(){
  if (keepScreen == true){
    background(255);
}
  else{
    background(0);
  }
}

void keyPressed() {

  if (key == 'a' || key == 'A') {
    keepScreen = !keepScreen;
  } 
}