public class Stars {//note that this class does NOT extend Floater
  private int myX, myY, myW, myL, myS, myF;
  public Stars() {
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    myW=(int)((Math.random()*2)+1);
    myL=(int)((Math.random()*2)+1);   
    myS=0;
    myF=1;

  }
  public void show() {
    fill(255, 255, 255);
    noStroke();
    ellipse(myX+(myS*((float)Math.random()*1000)-(myS*myX)), myY+(myS*(float)Math.random()*1000)-(myS*myY), (((((float)Math.random()*2))*(myW))*myF)+(myS*(float)Math.random()*3), (((((float)Math.random()*2))*(myL))*myF)+(myS*(float)Math.random()*3));
 if (keyPressed){
   if(key=='w'){myS=1;myF=0;}
    if(keyCode==32){myS=0;myF=1;}
}
}
}
