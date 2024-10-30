public class Jet{
  Laser las = new Laser();
  int z;
  
  
  public void fire(){
    hit = false;
    las.display();
    if(buttonPressed){
      las.activate();
    }
    else{
      las.display();
    }
  }

  public void move(){
  if ( myPort.available() > 0) {  
    val = myPort.readStringUntil('\n');    
  }
  val = trim(val);
  if ( val != null ) {
    background(bg);
    int[] xyz = int(split(val, ','));
    if (xyz.length == 3) {
      inputX = xyz[0];
      inputY = xyz[1];
      z = xyz[2];  
      if(z == 0){                
        buttonPressed = true;
      }
      dx = inputX/4095;
      dy = inputY/4095;
      if (dx < .5){
        dx = -1 + (dx*-1);
      }
      if (dx == .5){
        dx = 0;
      }
      if (dy < .5){
        dy = -1 + (dy*-1);
      }
      if (dy == .5){
        dy = 0;
      }
      if (-1.44 > dx && dx > -1.46){
        dx = 0;
      }
      if (-1.44 > dy && dy > -1.46){
        dy = 0;
      }
      if (dy == 0 && dx == 0){
        stop = true;
      }
      else{
        stop = false;
      }
      posX += dx;
      posY += dy;
      if (posX < 0){
        posX = 0;
      }
      if (posX > 500){
        posX = 500;
      }
      if (posY < 0){
        posY = 0;
      }
      if (posY > 500){
        posY = 500;
      }
     }
    }
  }
  
  void display(){
      fill(255, 175, 0);
      noStroke();
      circle(posX, posY, 25);    
  }
}
