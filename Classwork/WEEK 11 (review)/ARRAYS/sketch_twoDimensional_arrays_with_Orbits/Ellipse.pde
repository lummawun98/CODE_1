class Ellipse{
  
 //data
 PVector position;
 PVector translate;
 int size;
 
 //constructor
 Ellipse(int _xPos, int _yPos){
  position = new PVector(0, 0);
  translate = new PVector(_xPos, _yPos);
  size = 15;
   
 }
 
 //parameter holding a value for our color
 void display(color c){
  fill (c); 
  ellipse(position.x, position.y, size, size);//must be written as "position.x/postion.y" because the x and y positions were established as Pvectors 
   
   }

void orbit(int orbitDirection){
  position.x = cos(frameCount * .1) * size + translate.x; 
  position.y = orbitDirection*sin(frameCount * .1) * size + translate.y;//controlling the direction of the orbit of the blue circle
  
  
  
}


//methods

  
    
}