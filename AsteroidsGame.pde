Spaceship boop=new Spaceship();
Stars[] starrss;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
boolean movee, turnup, turnip, stap, stop, as, compstop, hello;
float ss, ff, k;
public void settings(){
 size(500, 500);
}
public void setup() 
{   
 starrss = new Stars[100];
 for(int i=0;i<starrss.length;i++){ starrss[i] = new Stars(); }
  for(int e=0;e<20;e++){  rocks.add(new Asteroid()); }
}
public void draw() 
{
  background(0);
  
  //acceleration speed
  ff=0.05;
  
 //brake
/*if (as){
 if(boop.getDirectionX()>=0){boop.setDirectionX(boop.getDirectionX()-0.05);}
 if(boop.getDirectionY()>=0){boop.setDirectionY(boop.getDirectionY()-0.05);}
 if(boop.getDirectionX()<=0){boop.setDirectionX(boop.getDirectionX()+0.05);}
 if(boop.getDirectionY()<=0){boop.setDirectionY(boop.getDirectionY()+0.05);}
        }*/
        
   //acceleration limit
if(boop.getDirectionX()>6){boop.setDirectionX(6);}
if(boop.getDirectionY()>6){boop.setDirectionY(6);}
if(boop.getDirectionX()<-6){boop.setDirectionX(-6);}
if(boop.getDirectionY()<-6){boop.setDirectionY(-6);}
          
for(int i=0;i<rocks.size();i++) { 
 float aa =dist(boop.getX(), boop.getY(),rocks.get(i).getX(), rocks.get(i).getY());
   if (aa<20){
          rocks.remove(i);} 
else {
rocks.get(i).move();
        rocks.get(i).show();}
  }
 for(int i=0;i<starrss.length;i++) { starrss[i].show(); }
  boop.show();
if(movee){ boop.move();boop.accelerate(ff+ss);}
    if(movee==false){ boop.move();}
  if(turnup){boop.turn(2);}
  if(turnip){boop.turn(-2);}
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

//activating keys
 public void keyPressed()
{
   if (key=='s'){as=true;}
   if (key=='w') {movee=true;}
   if (key=='d'){turnup=true;}
   if (key=='a'){turnip=true;}
   if (keyCode==32){stap=true;
   boop.setX((int)(Math.random()*500));
    boop.setY((int)(Math.random()*500));
      boop.setDirectionX(0);
       boop.setDirectionY(0);
        boop.setPointDirection((int)(Math.random()*360));
       movee=false;
    
    }
}
public void keyReleased(){
   if (key=='s'){as=false;}
   if (key=='d'){turnup=false;}
   if (key=='a'){turnip=false;}
   if (keyCode==32){stap=false;}
   if (key=='w'){movee=false;}
}
