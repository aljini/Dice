int m= 25;
void setup()
{
	size(1000,1000);
	noLoop();
}
void draw()
{
	for(int b =50; b<=850; b+=100) {

		for( int a =50; a<=850; a+=100){

			Die all = new Die(a,b);

			all.show();

		}
	}
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
		roll();
		
	}
	void roll()
	{

		numRoll = (int) (Math.random()*6)+1;

		
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100);
		if (numRoll==1){

				fill(0);
				ellipse (myX+50,myY+50,20,20);
		}

		if (numRoll==2){

				fill(0);
				ellipse (myX+25,myY+25,20,20);
				ellipse (myX+75,myY+75,20,20);
		}

		if (numRoll==3){

				fill(0);
				ellipse (myX+25,myY+25,20,20);
				ellipse (myX+75,myY+75,20,20);
				ellipse (myX+50,myY+50,20,20);
		}

		if (numRoll==4){

				fill(0);
				ellipse (myX+25,myY+25,20,20);
				ellipse (myX+75,myY+75,20,20);
				ellipse (myX+25,myY+75,20,20);
				ellipse (myX+75,myY+25,20,20);
		}

		if (numRoll==5){

				fill(0);
				ellipse (myX+25,myY+25,20,20);
				ellipse (myX+75,myY+75,20,20);
				ellipse (myX+25,myY+75,20,20);
				ellipse (myX+75,myY+25,20,20);
				ellipse (myX+50,myY+50,20,20);
		}

		if (numRoll==6){

				fill(0);
				ellipse (myX+25,myY+25,20,20);
				ellipse (myX+75,myY+75,20,20);
				ellipse (myX+25,myY+75,20,20);
				ellipse (myX+75,myY+25,20,20);
				ellipse (myX+25,myY+50,20,20);
				ellipse (myX+75,myY+50,20,20);
	    }
    }
}