public class Jet{
  
  Bullet bullet = new Bullet();
  Laser las = new Laser();
  //public float dx;
  //public float dy;
  //private float sdx;
  //private float sdy;
  //public float inputX;
  //public float inputY;
  //private float bX = posX;
  //private float bY = posY;
  
  
  
  public void fire(){
    //las.move();
    //las.display();
    //if(-1.44 > inputY && inputY > -1.46){
    //  las.display();
    //}
    hit = false;
    las.display();
    if(buttonPressed){
      las.activate();
      //if(online){
      //  hit = true;
      //}
    }
    else{
      las.display();
    }
  }
  
  //void bulletmove(){
  //  sdx = dx;
  //  sdy = dy;    
  //  bX += 1;
  //  bY += 1;
  //}
  
  //void bulletdisplay(){
  //  fill(0);
  //  circle(bX, bY, 5);
  //}
  
  public void move(){
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  }
  val = trim(val);
  if ( val != null ) {
    background(255); //replace with background image
    println(val);
    int[] xyz = int(split(val, ','));

    // use if statement to check serial input length to prevent ArrayIndexOutOfBounds errors
    if (xyz.length == 3) {
      inputX = xyz[0];
      inputY = xyz[1];
      int z = xyz[2];
      
      if(z == 0){                   //replace w button
        buttonPressed = true;
      }
      //else{
      //  buttonPressed = false;
      //}

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
      println(dx + ", " + dy);
      if (-1.44 > dx && dx > -1.46){
        dx = 0;
      }
      if (-1.44 > dy && dy > -1.46){
        dy = 0;
      }
      posX += dx;
      posY += dy;
      //posX = map(inputX, posX, analogMax, 0, canvasSize);
      //posY = map(inputY, posY, analogMax, 0, canvasSize);
      //int fillColor = (z == 1 ? 0 : 255);
      }
    }
  }
  
  void display(){
      //noFill();
      fill(80);
      noStroke();
      circle(posX, posY, 25);    
  }
  
  
}
