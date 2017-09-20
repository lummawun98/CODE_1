int brushSize;

void setup(){
 size(1000,1000);
 background(255);
 //noFill();
 brushSize= 10;
 
}

void draw(){
  fill(255, 30); //shows how to make the trail fade 
  rect(0,0,width,height);//shows how to make the trail fade
  
 if(mousePressed){ //mouse key
 fill(0,255, 100);
 ellipse(mouseX,mouseY, brushSize, brushSize);
 }
  
  //if(keyPressed){
   // brushSize += 10;
    }
   
 void keyPressed(){
  if(key == CODED){
  if(keyCode ==UP && brushSize <=500){ //"&&...500" place boundrary for largest size
      brushSize +=10;
   }else if(keyCode == DOWN && brushSize >10){ //"&&...10" place boundrary for smallest size
     brushSize -=10;
   }// dont foget to add curly bracket before and after each "if" statement
   }
}


void mousePressed(){ //only draws one ellipse when clicked 
  fill(0,255, 100);
  ellipse(mouseX,mouseY, brushSize, brushSize);
}
  