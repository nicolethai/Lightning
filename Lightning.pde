int screenSize = 300;

int startX = 0;
int startY = 15;
int endX = 0;
int endY = 15;

// mouseClicked counter
int numMouseClicked = 0;

void setup()
{
	size(screenSize, screenSize);
	background(0, 0, 52);
	strokeWeight(1);
}
void draw()
{
	// sets the line points
	while(endX <= screenSize)
	{
		endX = startX + ((int)(Math.random() * 9));
		endY = startY + ((int)(Math.random() * 19) - 9);
		stroke(255);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	text("Lightning", (int)(Math.random()*(screenSize/2)), (int)((Math.random()*screenSize) + (screenSize/2)));
	numMouseClicked++;
	if (numMouseClicked == 6) {
		setup();
		numMouseClicked = 0;
	}
	else {
		startX = 0;
		startY = (int)(Math.random() * (screenSize/2));
		endX = (int)(Math.random() * screenSize);
		endY = (int)(Math.random() * screenSize);
	}

}

