# Jet_Survival

# About
Jet Survival is a game inspired by the 1975 game "Jet Fighter" in which a player controls a jet and tries to shoot down opposing planes as they try to shoot down the player. 
Jet Survival takes this game and revitalizes it into one which the player controls a circle that aims a laser that fires with a press of the button as bogeys track down and try to run into the player while gradually increasing in speed, making the game progressively harder. The objective of this game is to shoot down as many bogeys as possible before losing 3 lives, after which the game will end. 

![JetSurvivalGif](https://github.com/user-attachments/assets/59996f93-7b38-43e7-b2d2-ec1f05d15884)

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
- ESP 32 TTGO T Display
- Screws

To begin installation, 3D Print the STL Files which will form the controller. Attach or solder the wires onto the Joystick and Button and attach to the Breadboard in the configuration shown under "Fritzing Diagram". Screw the Joystick into the base of the Joystick mount and glue the Button to the block to add the appropriate height and glue the Joystick mount and Button block to the base of the controller. While making sure that the wires flow out of the controller's cut outs, screw the top of the controller to the base to complete this step and wire the Button and Joystick wires to the appropriate spots on the Breadboard. Be sure to upload the JetSurvivalArduino.ino code to the ESP 32 to connect the controller to the game. 

![Image1](https://github.com/user-attachments/assets/c9bfe1b4-10ec-4fca-ad7f-ca7c247f46f6)
![Image2](https://github.com/user-attachments/assets/a3e0f0cc-e7bd-4dec-b1a2-eb617450c972)

# Fritzing Diagram

<img width="907" alt="FritzingDiagram" src="https://github.com/user-attachments/assets/82016b17-997a-4a13-bb51-a07798cd9c5a">

# Potentiometer

I felt the need to use a potentiometer unecessary because the game requires only directional movement and shooting. I considered using it as a setting for difficulty (speed of the enemy bogeys) but decided against it because I think universal difficulty allows for a high score to hold more value - if someone has a high score of 30 and someone else has a high score of 10 but on a higher difficulty, the two values cannot be directly measured against one another. 

https://github.com/user-attachments/assets/e3fc7d06-f80d-47ff-b59d-25d8ef4d2793


