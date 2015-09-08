void setup()
{
	size(500,500)
	noLoop();
}
void draw()
{
	for {}
}
void mousePressed()
{
	redraw();
}
class Die 
{
	int myX,myY,numRoll;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		numRoll = (int) (Math.random()*6)+1

	}
	void roll()
	{

		if (numRoll==1){

				fill(0);
				ellipse (50,50,20,20);
		}

		if (numRoll==2){

				fill(0);
				ellipse (25,25,20,20);
				ellipse (75,75,20,20);
		}

		if (numRoll==3){

				fill(0);
				ellipse (25,25,20,20);
				ellipse (75,75,20,20);
				ellipse (50,50,20,20);
		}

		if (numRoll==4){

				fill(0);
				ellipse (25,25,20,20);
				ellipse (75,75,20,20);
				ellipse (25,75,20,20);
				ellipse (75,25,20,20);
		}

		if (numRoll==5){

				fill(0);
				ellipse (25,25,20,20);
				ellipse (75,75,20,20);
				ellipse (25,75,20,20);
				ellipse (75,25,20,20);
				ellipse (50,50,20,20);
		}

		if (numRoll==6){

				fill(0);
				ellipse (25,25,20,20);
				ellipse (75,75,20,20);
				ellipse (25,75,20,20);
				ellipse (75,25,20,20);
				ellipse (25,50,20,20);
				ellipse (75,50,20,20);
		}
	}
	void show()
	{
		rect(myX,myY,100,100)
	}
}
