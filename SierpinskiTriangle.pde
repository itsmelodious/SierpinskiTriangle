public void setup()
{
	size(500, 500);
	background(255);
}
public void draw()
{
	//noLoop();
	fill(153, 201, 255, 125);
	noStroke();
	sierpinski(pmouseX, pmouseY, 50);
}
public void mouseClicked()
{
	loop();
	background(255);
}
public void sierpinski(int x, int y, int len) 
{
	if (len > 10)
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else
	{
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
}