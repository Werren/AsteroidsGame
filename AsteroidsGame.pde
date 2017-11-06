Spaceship boop=new Spaceship();
Stars[] starrss = new Stars[100];
boolean movee, turnup, turnip, stap;
public void setup() 
{
 size(500, 500);
 for(int i=0;i<starrss.length;i++){ starrss[i] = new Stars(); }
}
public void draw()
{
  background(0);
 for(int i=0;i<starrss.length;i++) { starrss[i].show(); }
  boop.show();
  if(movee){ boop.move();boop.accelerate(0.05);}
  if(turnup){boop.turn(1);}
  if(turnip){boop.turn(-1);}
  if(stap){
    fill(0);
    noStroke();
    rect(0,0,1000,1000);
    for(int i=0;i<200;i++)
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(250,250,(float)(Math.random()*700),(float)(Math.random()*700));
  }
    
  }
}
public void keyPressed()
{
   if (key=='w') {  movee=true;}
   if (key=='d'){turnup=true;}
   if (key=='a'){turnip=true;}
   if (key=='s'){stap=true;
   boop.setX((int)(Math.random()*500));
    boop.setY((int)(Math.random()*500));
      boop.setDirectionX(0);
       boop.setDirectionY(0);
       movee=false;
    }
}
public void keyReleased(){
   if (key=='d'){turnup=false;}
   if (key=='a'){turnip=false;}
   if (key=='s'){stap=false;}
}
