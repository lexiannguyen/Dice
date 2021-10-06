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
    int[] colors = {};    
    fill(colors[(int)(Math.random()*colors.length-1)]);
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
    } else if(dieNumber == 3){
      fill(0);
      ellipse(dieX + 7, dieY + 7, 10, 10);
      ellipse(dieX + 25, dieY + 25, 10, 10);
      ellipse(dieX + 43, dieY + 43, 10, 10);
      
    }else if (dieNumber == 4){
      fill(0);
      ellipse(dieX+12, dieY+10, 10, 10);
      ellipse(dieX+40, dieY+10, 10, 10);
      ellipse(dieX+12, dieY+40, 10, 10);
      ellipse(dieX+40, dieY+40, 10, 10);
    } else if(dieNumber == 5){
      fill(0);
      ellipse(dieX+25, dieY + 25, 10, 10);
      ellipse(dieX+12, dieY+10, 10, 10);
      ellipse(dieX+40, dieY+10, 10, 10);
      ellipse(dieX+12, dieY+40, 10, 10);
      ellipse(dieX+40, dieY+40, 10, 10);
    } else if(dieNumber == 6){
      fill(0);
      ellipse(dieX+12, dieY+7, 10, 10);
      ellipse(dieX+12, dieY+25, 10, 10);
      ellipse(dieX+12, dieY+43, 10, 10);
      ellipse(dieX+40, dieY+7, 10, 10);
      ellipse(dieX+40, dieY+25, 10, 10);
      ellipse(dieX+40, dieY+43, 10, 10);
    }

    //your code here draw a square
    //constructor = member function and initializes member variables
    //nested loops
    //instance = new object
    //local variables only exist in the constructor != member variables
    
  }
  
}
