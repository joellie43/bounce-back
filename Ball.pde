class Ball{  
  float x, y;
  float diameter;
  float vx = 0;
  float vy = 0;
  color shade;
  
  Ball(){
     float r = random(256);
     float g = random(256);
     float b = random(256);
     shade = color(r, g, b);
     diameter = 50;
     x = random((width - r) + r/2);
     y = random((height-r) + r/2);
     vx = random(10) - 5;
     vy = random(10) - 5;
  }
  
  Ball(float xCor, float yCor, float d, float velX, float velY, int colour){
    x = xCor;
    y = yCor;
    diameter = d;
    vx = velX;
    vy = velY;
    shade = colour;
  }
  
  void display(){
     fill(shade);
     ellipse(x, y, diameter, diameter);
  }
  
  void move(){
      x = x + (vx);
      y = y + (vy);
      
      //out of window on right
      if (x + diameter/2 > 640) {
        x = 640 - diameter/2; //sets to rightmost position possible
        vx *= -1; //angle of incident = angle of refraction
      }
      
      //out of window on left
      else if (x - diameter/2 < 0) {
        x = diameter/2; //sets to leftmost position possible
        vx *= -1;
      }
    if (y + diameter/2 > height) {
      y = height - diameter/2; //highest position possible
      vy *= -1; 
    } 
    else if (y - diameter/2 < 0) {
      y = diameter/2; //loest position possible
      vy *= -1;
    }
  }

  void expand(){
    diameter++;
  }
    
    void shrink(){
      diameter--;
    }
}
