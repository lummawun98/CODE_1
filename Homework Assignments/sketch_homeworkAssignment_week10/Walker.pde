class Walker{
 int x, y;
 
 Walker(int x, int y){
   this.x=x;
   this.y=y;
   
 }
 
 void display(){
   stroke(0);
   rect(x, y, 25, 25);
   ellipse(xPos, yPos, 60, 60);
   
   
 }
 
 void step(){
   int choice = int(random(20));
   if(choice == 0){
    this.x +=0;  
   }else if (choice == 1){
     this.x-=50;     
   }else if (choice == 2){
     this.y +=50;
   }else{
    this.y -=50; 
   }
   
   this.x= constrain(this.x, 0, width);
   this.y= constrain(this.y, 0, height); 
   
 }
 
}