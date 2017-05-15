  Ball[] balls;
  //global boolean to tell whether reaction ahs been triggered
  boolean reactionStarted;
  
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
    }
    move();
  }
  
  void mouseClick(){
    
  }