int size;
int r;

void setup(){
 size(1000, 900); 
  size= 10;
  
}

void draw(){
 background(0);
 
 for(int i= 0; i<=width; i+=size){
   for (int j=0; j <=height; j+=size){
     r = int(map(i,0,600,0,255));
     int b = int(map(j, 0, 600, 0, 255));
     fill(r, 0, b);
     ellipse (i, j, size, size); 
   }
   
 }
 
}