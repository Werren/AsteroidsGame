Spaceship boop=new Spaceship();
Stars[] starrss;
Asteroid[] frick=new Asteroid[20];
boolean movee, turnup, turnip, stap, stop, as, compstop;
float ss, ff, k;
public void setup() 
{   
 size(500, 500);
 starrss = new Stars[100];
 for(int i=0;i<starrss.length;i++){ starrss[i] = new Stars(); }
 for(int e=0;e<frick.length;e++){ frick[e] = new Asteroid(); }
}
public void draw() 
{
  background(0);
  ss=0;
  ff=0.1;
    boop.show();
      if (as){ss=-0.2;}
         for(int e=0;e<frick.length;e++){ 
    frick[e].move();
          frick[e].show();  } 
 for(int i=0;i<starrss.length;i++) { starrss[i].show(); }
  if(movee){ boop.move();boop.accelerate(ff+ss);}
  if(turnup){boop.turn(1);}
  if(turnip){boop.turn(-1);}
  if(stop){ 
    boop.setDirectionX(0);
    boop.setDirectionY(0);}
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
       if (key=='q'){as=true;}
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
   if (key=='q'){as=false;}
   if (key=='d'){turnup=false;}
   if (key=='a'){turnip=false;}
   if (key=='s'){stap=false;}
}
