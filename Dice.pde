void setup()
{
  noLoop();
  size (300, 300);
  background (0,250,100);
}
void draw()
{
  int sum= 0;
  background (0,250,100);
  for (int y=0; y <=239; y+=60) {
    for (int x = 1; x <= 300; x+=60) {
      Die Bob= new Die(x, y);
      Bob.roll();
      Bob.show();
      sum = sum +Bob.myRoll;
    }
  }
  text("Total roll:" + sum, 200, 250);
}

void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY;
  int myRoll;


  Die(int x, int y) 
  {
    myX = x;
    myY = y;
  }

  void roll()
  {
    myRoll  =(int) (Math.random() *6) +1;
  }
  void show()
  {
    fill(255);
    rect (myX, myY, 50, 50, 20);
    fill(0);

    if (myRoll ==1) {

      ellipse (myX+25, myY+25, 10, 10);
    }
    if (myRoll==2) {
      ellipse (myX+35, myY+35, 10, 10);
      ellipse (myX+15, myY+15, 10, 10);
    }
    if (myRoll==3) {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
    }
    if (myRoll==4) {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+15, 10, 10);
      ellipse (myX+15, myY+35, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
    }
    if (myRoll==5) {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+15, 10, 10);
      ellipse (myX+15, myY+35, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
    }
    if (myRoll==6) {
      ellipse (myX+15, myY+12, 10, 10);
      ellipse (myX+15, myY+25, 10, 10);
      ellipse (myX+15, myY+38, 10, 10);
      ellipse (myX+35, myY+12, 10, 10);
      ellipse (myX+35, myY+25, 10, 10);
      ellipse (myX+35, myY+38, 10, 10);
    }
  }
}
