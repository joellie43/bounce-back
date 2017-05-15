  Ball[] balls;
  //global boolean to tell whether reaction ahs been triggered
  boolean reactionStarted, click;
  Ball chosen;
  
  //tasks to perform ONCE, at launch
  void setup(){
    size(640, 360);
    reactionStarted = false;
    balls = new Ball[10];
    for (int i = 0; i < balls.length; i++){
      balls[i] = new Ball();
    }
    frameRate(30);
  }
  
  void draw(){
    background(0);
    for (int i = 0; i < balls.length; i++){
      balls[i].display();
      
      balls[i].move();
      if (reactionStarted){
        for (Ball b: balls){
          if (b.state == 1){
            if( balls[i].distance(b) < ((balls[i].diameter / 2) + (b.diameter / 2))){
              balls[i].state = 1;
            }
          }
          if (balls[i].state ==1){
            if( balls[i].distance(b) < ((balls[i].diameter / 2) + (b.diameter / 2))){
              b.state = 1;
            }
          }
    }
  }
    }
  }
  
  void mouseClicked(){
     float Px, Py, smallest;
     Px = mouseX;
     Py = mouseY;
     smallest = 100000;
     Ball chosenOne = balls[0];
     for (int i = 0; i < balls.length; i++){
       float distance2 = abs(balls[i].x - Px) + abs(balls[i].y - Py);
       float distance = sqrt(distance2);
       if (distance < smallest){
         smallest = distance;
         chosenOne = balls[i];
       }
     }
     
     chosenOne.vx = 0;
     chosenOne.vy = 0;
     chosenOne.state = 1;
     
     chosen = chosenOne;
     
     click = true;
   }