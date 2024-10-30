
int xyzPins[] = {39, 32, 33};   
bool lastButtonState = HIGH; 
bool buttonPressed = false;     
int zVal = 1;                   

void setup() {
  Serial.begin(9600);
  pinMode(xyzPins[2], INPUT_PULLUP);  
}

void loop() {
  int xVal = analogRead(xyzPins[0]);
  int yVal = analogRead(xyzPins[1]);
  int currentButtonState = digitalRead(xyzPins[2]);

  if (currentButtonState == LOW && lastButtonState == HIGH) {
    zVal = 0; 
    buttonPressed = true; 
  } 
  else if (currentButtonState == LOW) {
    zVal = 1; 
  }
  else if (currentButtonState == HIGH) {
    if (buttonPressed) {
      buttonPressed = false; 
    } else {
      zVal = 1; 
    }
  }

  Serial.printf("%d,%d,%d", xVal, yVal, zVal);
  Serial.println();

  lastButtonState = currentButtonState; 
  delay(100);
}
