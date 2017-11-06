public class Spaceship extends Floater  
{   
  public Spaceship() 
  {
    corners = 25;
    int[] xS = {16-15/13,12-15/13,12-15/13,4-15/13,0-15/13,0-15/13,-6-15/13,-6-15/13,-2-15/13,-2-15/13,-1-15/13,-1-15/13,-6-15/13,6-15/13,12-15/13,12-15/13,4-15/13,0-15/13,0-15/13,-6-15/13,-6-15/13,-2-15/13,-2-15/13,-1-15/13,-1-15/13,-6-15/13};
      int[] yS  = {-1,-1,-3,-5,-5,-7,-7,-5,-5,-3,-3,-1,-1,1,1,3,5,5,7,7,5,5,3,3,1,1};
       xCorners = xS;
       yCorners = yS; 
       myColor = color(251,232,215);
      myCenterX = 250;
      myCenterY = 250;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
  }
  
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
