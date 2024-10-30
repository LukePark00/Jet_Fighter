# Jet_Survival

# About
Jet Survival is a game inspired by the 1975 game "Jet Fighter" in which a player controls a jet and tries to shoot down opposing planes as they try to shoot down the player. 
Jet Survival takes this game and revitalizes it into one which the player controls a circle that aims a laser that fires with a press of the button as bogeys track down and try to run into the player while gradually increasing in speed, making the game progressively harder. The objective of this game is to shoot down as many bogeys as possible before losing 3 lives, after which the game will end. 

//insert gif

# Design Goals
- Use the joystick to move the player while aiming the laser in the direction of movement
- Spawn in bogeys that track and move towards the player while subtly increasing speed with every 5 bogeys
- Design the laser which will kill bogeys when in line and activated
- Lives and scoring system

# Installation
Materials:
- STL files for 3D Printing
- Joystick
- Button
- Wire
- Breadboard
- ESP 32 TTGO Display
- Screws

To begin installation, 3D Print the STL Files which will form the controller. Attach or solder the wires onto the Joystick and Button and attach to the Breadboard in the configuration shown under "Fritzing Diagram". Screw the Joystick into the base of the Joystick mount and glue the Button to the block to add the appropriate height and glue the Joystick mount and Button block to the base of the controller. While making sure that the wires flow out of the controller's cut outs, screw the top of the controller to the base to complete this step and wire the Button and Joystick wires to the appropriate spots on the Breadboard. Be sure to upload the JetSurvivalArduino.ino code to the ESP 32 to connect the controller to the game. 

// insert image

# Fritzing Diagram

// Fritzing Diagram
