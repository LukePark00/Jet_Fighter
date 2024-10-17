public class Bullet{
  private float bdx;
  private float bdy;
  private float x = 250;
  private float y = 250;
  //private float inputX;
  //private float inputY;
  
  float getDirX(){
    //if ( myPort.available() > 0) {  // If data is available,
    //val = myPort.readStringUntil('\n');         // read it and store it in val
    // }
    //val = trim(val);
    //if ( val != null ) {
    ////background(255); //replace with background image
    //println(val);
    //int[] xyz = int(split(val, ','));

    //// use if statement to check serial input length to prevent ArrayIndexOutOfBounds errors
    //if (xyz.length == 3) {
    //  inputX = xyz[0];
    //  }
    //}
    //return inputX;
    return inputX;
  }
  
  float getDirY(){
    return inputY;
  //  if ( myPort.available() > 0) {  // If data is available,
  //  val = myPort.readStringUntil('\n');         // read it and store it in val
  //   }
  //  val = trim(val);
  //  if ( val != null ) {
  //  //background(255); //replace with background image
  //  println(val);
  //  int[] xyz = int(split(val, ','));

  //  // use if statement to check serial input length to prevent ArrayIndexOutOfBounds errors
  //  if (xyz.length == 3) {
  //    inputY = xyz[1];
  //    }
  //  }    
  //  return inputY;
  }
  //void new(){
  //  move();
  //  display();
  //}
  
  void move(){
    bdx = getDirX();
    bdy = getDirY();
    x += bdx;
    y += bdy;
  }
  
  void display(){
    fill(0);
    circle(x, y, 5);
  }
}
