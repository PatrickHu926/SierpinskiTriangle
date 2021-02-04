public void setup()
{
  size(450,550);
  background(0);
}
public void draw()
{
  sierpinski(50, 450, 350);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    noStroke();
    triangle(x, y, x+(len/2), y-len, x+len, y);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x + (len/2), y, len/2);
    sierpinski(x + (len/4), y - (len/2), len/2);
  }
}
