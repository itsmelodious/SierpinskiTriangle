public void setup()
{
	size(500, 500);
	background(0);
}
public void draw()
{
	noLoop();
	fill(153, 201, 255, 125);
	strokeWeight(0.5);
	stroke(255);
	sierpinski(0, 500, 500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len > 30)
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