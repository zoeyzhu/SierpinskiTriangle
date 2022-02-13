int x = 160;
int y = 400;
int len = 300;
public void setup()
{

  size(600, 600);
  stroke (0);
}
public void draw()
{
  background(220, 220, 220);
  sierpinski(x, y, len);
  if (mousePressed == true) {
    background(220, 220, 220);
    fill((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    
  }
  if (key == ' '){ 
    background(220, 220, 220);
    sierpinski(x, y,len + 50);
    len =len -1;
    if(len == 1){
      len = 300;
    }
  }
  
  if (key == 'z'){
    background(220, 220, 220);
   sierpinski(x, y,300);
  }
  
}


public void sierpinski(int x, int y, int len)
{
  if (len <= 25) {
    triangle(x, y, x + len/2, y - len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
