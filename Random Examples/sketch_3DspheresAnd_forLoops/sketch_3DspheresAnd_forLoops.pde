void setup(){
 size(800,600,P3D);  

  
}
void draw(){
 lights(); //help create shadows that appear 3D
 background(0); 
 
 translate(width/2, height/2);
 rotateX(radians(mouseX));
 rotateY(radians(mouseX));
 rotateZ(radians(mouseX)); 
 //first write out the forLoops
 
 for(int i = -9; i<9; i++){
  for(int j = -5; j<5; j++){
   for(int k = -5; k<5; k++){
    pushMatrix();
    translate(i*70, j*70, k*70);
       rotateX(i + frameCount* 0.09);
       rotateY(i + frameCount* 0.09);
       rotateZ(i + frameCount* 0.09);
    sphere(20);
    noStroke();
    fill(map(i, -5, 5, 0, 255), map(j, -5, 5, 0, 255), map(k, -5, 5, 0, 255));
    popMatrix();
     
   }
  }
 }
  
  
}