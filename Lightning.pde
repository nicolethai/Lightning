int screenSize = 300;

int startX = -15;
int startY = 0;
int endX = 0;
int endY = 15;

// mouseClicked counter
int numMouseClicked = 0;

void setup()
{
	size(screenSize, screenSize);
	background(0, 0, 52);
	noLoop();
	stars();
}

void draw()
{
	lightning();
}

// check function
void mousePressed() 
{
	numMouseClicked++;
	// text("Lightning", (int)(Math.random()*(screenSize/2)), (int)((Math.random()*screenSize) + (screenSize/2)));
	if (numMouseClicked == 6) {
		setup();
		numMouseClicked = 0;
	}
	else {
		startX = (int)(Math.random() * (screenSize-10)) + 10;
		startY = 0;
		endX = (int)(Math.random() * screenSize);
		endY = (int)(Math.random() * screenSize);
		redraw();
	}

}

void lightning()
{

	strokeWeight(1);
	// sets the line points
	while(endX <= screenSize)
	{
		endX = startX + ((int)(Math.random() * 19) - 9);
		endY = startY + ((int)(Math.random() * 9));
		stroke(255);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}	

}

void stars()
{
	for (int y =10; y < screenSize; y+=50)
	{
		for (int x = 10; x < screenSize; x+=25)
		{
			strokeWeight(.75);
			stroke(255);
			point(x, y);
		}
	}
	for (int y =35; y < screenSize; y+=50)
	{
		for (int x = 25; x < screenSize; x+=25)
		{
			strokeWeight(.75);
			stroke(255);
			point(x, y);
		}
	}
}