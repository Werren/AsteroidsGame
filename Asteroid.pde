public class Asteroid extends Floater
{
public Asteroid(){
  corners = 6;
  xCorners= new int[corners];
  yCorners= new int[corners];
  xCorners[0] =-11;
    yCorners[0] =-8;
    xCorners[1] =7;
  yCorners[1] =-8;
  xCorners[2] =13;
  yCorners[2] =0;
  xCorners[3] =6;
  yCorners[3] =10;
  xCorners[4] =-11;
  yCorners[4] =8;
  xCorners[5] =-5;
  yCorners[5] =0;
        myPointDirection =Math.random()*361;
     myColor = color(180);
      myCenterX =(int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
       myDirectionX = Math.random()*4;
      myDirectionY = Math.random()*4;
      myPointDirection += Math.random()*361;
}
public void move(){
turn(rotSpeed);
myCenterX += myDirectionX;
   myCenterY += myDirectionY;

   //wrap around screen
   if(myCenterX >width){
	myCenterX = 0;
  }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }  
  }
  private int rotSpeed=(int)(Math.random()*4);
    public void setX(int x) {myCenterX = x;}
     public int getX(){return (int) myCenterX;}
        public void setY(int y) {myCenterY = y;}
         public int getY(){return (int) myCenterY;}
          public void setDirectionX(double x) {myDirectionX = x;}
           public double getDirectionX(){return myDirectionX;}
        public void setDirectionY(double y) {myDirectionY = y;}
         public double getDirectionY(){return myDirectionY;}
         public void setPointDirection(int degrees)  {myPointDirection = degrees;}
public double getPointDirection(){return myPointDirection;}
}
