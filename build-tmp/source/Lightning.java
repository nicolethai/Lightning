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

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

public void setup()
{
	size(screenSize, screenSize);
	background(0);
	strokeWeight(2);
}
public void draw()
{
	// sets the line points
	while(endX <= screenSize)
	{
		endX = startX + ((int)(Math.random() * 9));
		endY = startY + ((int)(Math.random() * 19) - 9);
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
public void mousePressed()
{
	startX = startX;
	startY = startY;
	endX = endX;
	endY = endY;
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
