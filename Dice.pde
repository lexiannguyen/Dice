void setup()
{
  size(300, 300);
  noLoop();
}
Die bob;
void draw()
{
  for(int r = 20; r<= 280; r+= 70){
    for(int c = 20; c<= 280; c+= 70){
    bob = new Die(r, c);
    bob.roll();
    bob.show();
    
    }
  }
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dieSize, dieColor, dieNumber, dieX, dieY;
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
    dieColor = 255;
    dieSize = 50;
    dieNumber = 1;

    //variable initializations here
  }

  void roll()
  {
    dieNumber += 1;
    //your code here
    //change number of die
  }
  void show()
  {
    fill(255, 255, 255);
    square(dieX, dieY, dieSize);
    if (dieNumber == 1){
      fill(0, 0, 0);
      int dotx = dieX + dieSize/2;
      int doty = dieY + dieSize/2;
      ellipse(dotx, doty, 15, 15);
    } else if(dieNumber == 2){
      fill(0);
      int dotx = dieX + dieSize/2;
      ellipse(dotx, dieY+15, 12, 12);
      ellipse(dotx, dieY+35, 12, 12);
    }

    //your code here draw a square
  }
  
}
