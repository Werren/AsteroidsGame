public class Asteroid extends Floater
{
private int rotSeed=(int)(Math.random()*4)+1;
public Asteroid(){
   corners = 25;
  int[] xS = {16-15/13,12-15/13,12-15/13,4-15/13,0-15/13,0-15/13,-6-15/13,-6-15/13,-2-15/13,-2-15/13,-1-15/13,-1-15/13,-6-15/13,6-15/13,12-15/13,12-15/13,4-15/13,0-15/13,0-15/13,-6-15/13,-6-15/13,-2-15/13,-2-15/13,-1-15/13,-1-15/13,-6-15/13};
      int[] yS  = {-1,-1,-3,-5,-5,-7,-7,-5,-5,-3,-3,-1,-1,1,1,3,5,5,7,7,5,5,3,3,1,1};
        myPointDirection =(int)(Math.random()*360)+1;
     myColor = color(251);
      myCenterX =(int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
       myDirectionX = (int)(Math.random()*4)+1;
      myDirectionY = (int)(Math.random()*4)+1;
      myPointDirection += (int)(Math.random()*361)+1;
}
public void move(){
turn(rotSeed);
super.move();
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
