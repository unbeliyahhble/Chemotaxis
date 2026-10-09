Firefly[] sparkle; 
color bg = color(0, 0, 0); 

void setup() { 
  
  size(400, 400); 
  background(bg); 
  rectMode(CENTER); 
  noStroke(); 
  
  sparkle = new Firefly[25]; 
  for(int i = 0; i < sparkle.length; i++) {
    sparkle[i] = new Firefly(); 
  }
  
} 

void draw() { 
  
  background(bg); 
  fill(32, 54, 32); 
  
  for (int i = 0; i < sparkle.length; i++) { 
    sparkle[i].move(); 
    sparkle[i].show(); 
  } 
  
} 

class Firefly { 
  
  int myX, myY, c, s; 
  
  Firefly() { 
    myX = mouseX; 
    myY = mouseY; 
    c = (int)(Math.random()*35)+150; //colour 
    s = (int)(Math.random()*5)+8; //size 
  } 
  
  void show() { 
    drawLight(myX, myY, c, s); 
  } 
  
  void move() {
    if (mouseX > myX) 
      myX = myX + (int)(Math.random()*7)-2; 
    else 
      myX = myX + (int)(Math.random()*7)-4; 
    if (mouseY > myY) 
      myY = myY + (int)(Math.random()*7)-2; 
    else 
      myY = myY + (int)(Math.random()*7)-4; 
  } 
  
} 

void drawLight(int x, int y, int c, int s) {
  fill(250, 250, c, 10); 
  ellipse(x, y, s+30, s+30); 
  fill(250, 250, c, 20);
  ellipse(x, y, s+25, s+25); 
  fill(250, 250, c, 30);
  ellipse(x, y, s+20, s+20); 
  fill(250, 250, c+50, 60); 
  ellipse(x, y, s+10, s+10); 
  fill(250, 250, c+100, 90); 
  ellipse(x, y, s+5, s+5); 
  fill(250, 250, c+150, 90); 
  ellipse(x, y, s+1, s+1); 
  fill(255, 255, 255); 
  ellipse(x, y, s, s); 
}
