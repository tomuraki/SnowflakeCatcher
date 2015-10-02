Snowflake[] bob;
void setup()
{
  //your code here
  size(300,300);
  bob=new Snowflake[30];
  for(int i=0; i<bob.length; i++)
  {
    bob[i]=new Snowflake();
  }
  background(0,0,0);
}
void draw()
{
  //your code here
  for(int i=0; i<bob.length; i++)
  {
    bob[i].erase();
    bob[i].lookDown();
    bob[i].move();
    bob[i].wrap();
    bob[i].show();
  }

}
void mouseDragged()
{
  int myX;
  int myY;
  myX=mouseX;
  myY=mouseY;
  //your code here
  if(mouseY<300)
  {
    fill(255,0,0);
    noStroke();
    ellipse(myX,myY,5,5);
    stroke(0);
  }    

}

class Snowflake
{
  //class member variable declarations
  int x;
  int y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x=(int)(Math.random()*301);
    y=(int)(Math.random()*301);
    isMoving=true;
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if(y>=0 && y<=300 && get(x,y+4) !=color(0,0,0))
      isMoving=false;
    else 
      isMoving=true;
  }
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving==true)
    {
      y++;
    }  
  }
  void wrap()
  {
    //your code here
    if(y>295)
    {
      y=0;
      x=(int)(Math.random()*301);
    }
  }
}


