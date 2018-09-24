//Variables for storing x locations of confetti
float confetti1X;
float confetti2X;
float confetti3X;
float confetti4X;
float confetti5X;
float confetti6X;
float confetti7X;
float confetti1Y;
float confetti2Y;
float confetti3Y;
float confetti4Y;
float confetti5Y;
float confetti6Y;
float confetti7Y;
int presentCounter = 0;
//Variable that stores how visible the secret message text is
float opacity = 0;
//Variable that stores the instructions for the user
String instructions = "Let's Have a Party!\nClick to give presents and show a secret message";
String presentsText = "Presents: ";
String secretText = "This is a blasty-blast!";
void setup()
{
fullScreen();
confetti1X = random(10, width-10);
confetti2X = random(10, width-10);
confetti3X = random(10, width-10);
confetti4X = random(10, width-10);
confetti5X = random(10, width-10);
confetti6X = random(10, width-10);
confetti7X = random(10, width-10);
//Give random starting values to the y locations for the confetti pieces
confetti1Y = random(10, height);
confetti2Y = random(10, height);
confetti3Y = random(10, height);
confetti4Y = random(10, height);
confetti5Y = random(10, height);
confetti6Y = random(10, height);
confetti7Y = random(10, height);
//Make shapes and text be drawn with their center being the point given
rectMode(CENTER);
ellipseMode(CENTER);
textAlign(CENTER);
}
void draw()
{
//Set the background to a purple colour
background(145, 24, 200);
fill(255, 0, 0);
rect(confetti1X, confetti1Y, 50, 60);
//Draw confetti 2
fill(0, 255, 0);
triangle(confetti2X, confetti2Y, confetti2X - 50, confetti2Y + 30, confetti2X + 50, confetti2Y + 30);
//Draw confetti 3
fill(0, 0, 255);
triangle(confetti3X, confetti3Y, confetti3X, confetti3Y - 50, confetti3X + 40, confetti3Y - 40);
fill(100, 240, 50);
ellipse(confetti4X, confetti4Y, 30, 60);
fill(250, 130, 25);
arc(confetti5X, confetti5Y, 52, 75, PI/3, PI);
fill(100, 123, 180);
rect(confetti6X, confetti6Y, 60, 60);
fill(150, 150, 150);
ellipse(confetti7X, confetti7Y, 75, 75);
//Set up style for text
fill(255);
textSize(50);
text(instructions, width/2, height/2 - 100);
//Display present counter
text(presentsText + presentCounter, width/2, height/2 + 50);
//Set the fill for the secret text to be transparent until the opacity variable increases with mouse clicks
fill(255, opacity);
text(secretText, width/2, height/2 + 125);
confetti1Y += 2;
confetti2Y += 5;
confetti3Y += 3;
confetti4Y += random(1, 6);
confetti5Y += 7;
confetti6Y += 4;
confetti7Y += random(3, 5);
//If confetti 1's y location is more than the height of the window...
if(confetti1Y >= height)
{
//Reset the y location of confetti 1 to be at the top of the window
confetti1Y = 0;
}
if(confetti2Y >= height)
{
confetti2Y = 0;
}
if(confetti3Y >= height)
{
confetti3Y = 0;
}
if(confetti4Y >= height)
{
confetti4Y = 0;
}
if(confetti5Y >= height)
{
confetti5Y = 0;
}
if(confetti6Y >= height)
{
confetti6Y = 0;
}
if(confetti7Y >= height)
{
confetti7Y = 0;
}
}
void mouseClicked()
{
presentCounter++;
//Increase the opacity of the secret message text every time the mouse gets clicked
opacity += 10;
}
