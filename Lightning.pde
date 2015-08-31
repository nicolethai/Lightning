int screenSize = 300;

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
	size(screenSize, screenSize);
	background(0);
	strokeWeight(2);
}
void draw()
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
void mousePressed()
{
	startX = startX;
	startY = startY;
	endX = endX;
	endY = endY;
}

