public void setup()
{
	size(600,600);
}
public void draw()
{
	noStroke();
	fill(50,50,90);
	sierpinski(100,500,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{	
	if (len<40)
		
		triangle(x, y, x+(len/2), y-len, x+len, y);
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}