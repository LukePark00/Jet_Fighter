/*
  Serial Joystick
 Takes in X,Y,Z serial input from a joystick
 */
Opp opp = new Opp();
Jet jet = new Jet();
Laser las2 = new Laser();

float posX = 250;
float posY = 250;
float oppX;
float oppY;
float dx;
float dy;
//float bullX;
//float bullY;
//float sposX;
//float sposY;
float inputX;
float inputY;
float level = 0.5;
int score = 0;
boolean alive = true;
boolean buttonPressed = false;
boolean hit = false;
boolean online = false;

import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port

int canvasSize = 500;
int analogMax = 4095;

void setup()
{
  size(500, 500);
  //printArray(Serial.list());
  String portName = Serial.list()[1];
  //println(portName);
  myPort = new Serial(this, portName, 9600); // ensure baudrate is consistent with arduino sketch
}

void draw(){
  //println(hit);
  jet.move();
  jet.display();
  jet.fire();
  if (hit){
    score++;
  }
  displayText();

  //jet.display();
  //jet.move();
  opp.display();
  opp.move();
  //opp.fire();
  //sposX = posX;
  //sposY = posY;
  //if (alive && oppLive == false){
    //genOpp();
    //int i = 1;
    //oppX = 250 + i;
    //oppY = 250 + i;
    //fill(0);
    //circle(oppX, oppY, 25);
    //i++;
}


//void genOpps(){
//  if (oppLive == false){
//    int x = int(random(0, 500));
//    int y = int(random(0, 500));
//    int xdir = int(random(-1,2));
//    int ydir = int(random(-1,2));
//    fill(0);
//    translate(1,-1);
//    circle(0,0,25);
//    //oppLive = true;
//  }
//}

//void genOpp(){
  
//}
//int counter(){
//  if (hit){
//    score++;
//  }
//  return score;
//}

void displayText(){
  textSize(10);
  fill(0,0,0);
  text("Score: " + score, 0, 10);
}

//void makep1()
//{
//  if ( myPort.available() > 0) {  // If data is available,
//    val = myPort.readStringUntil('\n');         // read it and store it in val
//  }
//  val = trim(val);
//  if ( val != null ) {
//    background(255);
//    println(val);
//    int[] xyz = int(split(val, ','));

//    // use if statement to check serial input length to prevent ArrayIndexOutOfBounds errors
//    if (xyz.length == 3) {
//      int x = xyz[0];
//      int y = xyz[1];
//      int z = xyz[2];

//      posX = map(x, posX, analogMax, 0, canvasSize);
//      posY = map(y, posY, analogMax, 0, canvasSize);
//      int fillColor = (z == 1 ? 0 : 255);

//      noFill();
//      stroke(0);
//      circle(posX, posY, 25);
//    }
//  }
//}
