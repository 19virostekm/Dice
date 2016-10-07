void setup()
{
  noLoop();
  size(400,400);
  
}
void draw()
{
  int dieTotal = 0;
  background(0,0,0);
  for(int y = 30;y<=350;y+=50)
  {
    for(int x = 30;x<=350;x+=50)
    {
      Die bob = new Die(x,y);
      bob.roll(); 
      bob.show(); 
      dieTotal += bob.dieNumber;
    }
  }
  textAlign(CENTER);
  fill(255,255,255);
  text("You rolled " + dieTotal, 195,390);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX,myY, dieNumber;
  Die(int x, int y) 
 {
   myX = x;
   myY = y;
 }
  void show()
  {
    noStroke();
    fill(255,255,255);
    rect(myX,myY,30,30);
    if (dieNumber == 1)
   {
    fill(255,0,0);
    ellipse(myX + 15,myY + 15,5,5);
   }
   else if (dieNumber == 2)
   {
    fill(255,151,54);
    ellipse(myX + 15,myY + 10,5,5);
    ellipse(myX + 15,myY + 20,5,5);
   }
   
    else if (dieNumber == 3)
    {
     fill(255,214,64);
     ellipse(myX + 20,myY + 18,5,5);
     ellipse(myX + 15,myY + 13,5,5);
     ellipse(myX + 10,myY + 8,5,5);
    }
    
     else if (dieNumber == 4)
     {
      fill(48,209,111);
      ellipse(myX + 10,myY + 10,5,5);
      ellipse(myX + 20,myY + 10,5,5);
      ellipse(myX + 10,myY + 20,5,5);
      ellipse(myX + 20,myY + 20,5,5);
     }
     
      else if (dieNumber == 5)
      {
       fill(64,158,255);
      ellipse(myX + 10,myY + 10,5,5);
      ellipse(myX + 20,myY + 10,5,5);
      ellipse(myX + 10,myY + 20,5,5);
      ellipse(myX + 15,myY + 15,5,5);
      ellipse(myX + 20,myY + 20,5,5);
      }
      
       else if(dieNumber == 6)
       {
        fill(165,64,255);
        ellipse(myX + 10,myY + 5,5,5);
        ellipse(myX + 10,myY + 13,5,5);
        ellipse(myX + 10,myY + 21,5,5);
        ellipse(myX + 20,myY + 5,5,5);
        ellipse(myX + 20,myY + 13,5,5);
        ellipse(myX + 20,myY + 21,5,5);
       }
  }
  void roll()
  {
   this.dieNumber = (int)Math.ceil(Math.random()*6); 
   }
}
