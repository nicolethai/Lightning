import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int screenSize = 300;

int startX = 15;
int startY = 0;
int endX = 0;
int endY = 15;

// mouseClicked counter
int numMouseClicked = 0;

public void setup()
{
	size(screenSize, screenSize);
	background(0, 0, 52);
	strokeWeight(1);
	noLoop();
}

public void draw()
{
	lightning();
}

// check function
public void mousePressed() 
{
	numMouseClicked++;
	// text("Lightning", (int)(Math.random()*(screenSize/2)), (int)((Math.random()*screenSize) + (screenSize/2)));
	if (numMouseClicked == 6) {
		setup();
		numMouseClicked = 0;
	}
	else {
		startX = (int)(Math.random() * screenSize);
		startY = 0;
		endX = (int)(Math.random() * screenSize);
		endY = (int)(Math.random() * screenSize);
		redraw();
	}

}

public void lightning()
{
	// sets the line points
	while(endX <= screenSize)
	{
		endX = startX + ((int)(Math.random() * 15) - 5);
		endY = startY + ((int)(Math.random() * 5));
		stroke(255);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}	

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
