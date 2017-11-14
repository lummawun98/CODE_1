int num = 10;
Rabbit[] bunnies;

//Rabbit bunny1;
//Rabbit bunny2;

void setup() {
  size(500,500);
  //bunny1 = new Rabbit(0,200,1,color(100,200,100),50,30);  
  //bunny2 = new Rabbit(0,100,2,color(50,50,100),200,100);
  bunnies = new Rabbit[num];
  
  for(int i=0; i<num; i++){
    bunnies[i] = new Rabbit(0,random(0,height),random(1,5),color(random(200,255),random(200,255),random(200,255)),random(50,200));
  }
}

void draw() {
  background(0);
  
  for(int i=0; i<num; i++){
    bunnies[i].display();
    bunnies[i].move();
  }
}