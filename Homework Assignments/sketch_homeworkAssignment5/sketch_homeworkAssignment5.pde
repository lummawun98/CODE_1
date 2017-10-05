PFont font;
boolean buttonPressed;

void setup(){
  
  size(640,780, P3D);
        //FONT AND WORDS//
  printArray(PFont.list());
  font = loadFont("Shumi-31.vlw");
  textFont(font);
  strokeWeight(20);
  frameRate(2);
  
}

void draw(){
        //FONT AND WORDS//
        if(buttonPressed);{
          printArray(PFont.list());
          font = loadFont("Shumi-31.vlw");
  textFont(font);
  strokeWeight(20);
  frameRate(-60);
          //background(255, 0, 0);
          //fill(0, 255, 0);
        }
          
        //lines//
   for (int i = 0; i < width; i++){ 
    float r = random(255);
    stroke(r);
    line(i, 0, i, height);}
        
 

       //FONT AND WORDS//
  //background(102);
  //textAlign(RIGHT);
  //drawType(width * 0.25);
  //textAlign(CENTER);
  //drawType(width * 0.5);
  //textAlign(LEFT);
  //drawType(width * 0.75);
  
  
  //ROLLY BALLS//
//lights();
//background(255);
//translate(width/2, height/2);
//rotateX(radians(110));
//rotateY(radians(250));
//rotateZ(radians(30));
//   for(int i = -9; i<9; i++){
//    for(int j = -5; j<5; j++){
//      for(int k = -5; k<5; k++){
//        pushMatrix();
//        translate(i*70, j*70, k*70);
//            rotateX(i + frameCount* 0.09);
//            rotateY(i + frameCount* 0.09);
//            rotateZ(i + frameCount* 0.09);
//         sphere(15);
//         noStroke();
//         fill(map(i, -5, 5, 0, 255), map(j, -5, 5, 0, 255), map(k, -5, 5, 0, 255));
//         popMatrix();
//      }
//    }
//   }
  
}

void drawType(float x){
 fill(0);
 text("love yourself,", x, 95);
 fill(51);
 text("brush your teeth,", x, 130);
 fill(204);
 text("praise God,", x, 165);
  
  
  
  
  
}
  
  
  
  
  