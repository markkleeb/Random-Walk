class Walker {

  PVector loc;
  ArrayList<PVector> path;


  Walker() {

    loc = new PVector(0, 0);
    path = new ArrayList<PVector>();
  }


  void display() {
    stroke(0);
    fill(175);
    rectMode(CENTER);
    rect(loc.x, loc.y, 25, 25);

    beginShape();
    stroke(0);
    noFill();
    for (PVector v: path) {
      vertex(v.x, v.y);
    }
    endShape();
  }


  void walk() {
    boolean r, l, u, d;
    
    r = true;
    l = true;
    u = true;
    d = true;

    for (int i = 0; i < path.size(); i++) {

      PVector temppath = path.get(i);

      if (loc.x + 20 == temppath.x && loc.y == temppath.y || loc.x +20 > width) {
        r =false;
      }
      if (loc.x -20 == temppath.x && loc.y == temppath.y || loc.x - 20 < 0 ) {
        l = false;
      }
      if (loc.y +20 == temppath.y && loc.x == temppath.x || loc.y +20 > height) {
        d = false;
      }
      if (loc.y - 20 == temppath.y && loc.x == temppath.x || loc.y -20 < 0) {
        u = false;
      }
      println("right " + r );
      println("left " + l );
      println("up " + u );
      println("down " + d );
    }


    int rand = int(random(0, 4));


    switch(rand) {

    case 0:

      if (r) {
        loc.x +=20;
      }

      break;

    case 1:
      if (l) {
        loc.x -= 20;
      }
      break;

    case 2:
      if (d) {
     
        loc.y +=20;
      }
      break;

    case 3:
      if (u) { 
        
        loc.y -= 20;
      }
      break;

      
    }


if(!r && !d && !u && !l){

  for(int i = path.size()-1; i >= 0; i--){

    PVector tpath = path.get(i);
    tpath.x = 0;
    tpath.y= 0;
}
  
loc.x = 0;
loc.y = 0;



}

    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);


    path.add(loc.get());

  }
}

