//Mark Kleback - Homework1 - Random Walk
//Nature of Code

Walker w;

void setup(){
  size(400, 400);
  frameRate(30);
  
  w= new Walker();
}

void draw() {
  
  background(255);
  
  for(int x = 0; x < width; x++){
    for(int y = 0; y<height; y++){
   
   
      
    }
  }
  
  w.walk();
  w.display();
  
}
