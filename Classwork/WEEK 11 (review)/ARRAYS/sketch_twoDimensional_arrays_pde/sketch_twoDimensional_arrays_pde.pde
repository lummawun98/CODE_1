//need to define the size of the array
//need a color array
//must have 2 dimensuons
//boolean array to keep track of whne ellipse is clicked 

int num = 61;//number has to be defined before you define array
boolean [][] clicked = new boolean[num][num];
color [][] c = new color[num][num];
int size= 10;

void setup(){
 size(600, 600);
 background(0);
 noStroke();
 smooth();
 
 for(int i = 0; i<num; i++){
   for (int j = 0; j<num; j++){
      clicked[i][j] = false;
      c[i][j] = color(255);//sets thedefault color of each "ice cube" to white
 
  
   }
 }
}


void draw(){
   for(int i = 0; i<num; i++){
      for (int j = 0; j<num; j++){
        
        if(clicked[i][j] == false){
          if(mousePressed){
            if(dist(mouseX, mouseY, i*size, j*size) <= size/2){
          c[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
          clicked[i][j] = true; 
          
        }
          }
            }
        
        fill(c[i][j]);
        ellipse(i*size, j*size, size, size);
  
  
      }
   }
}