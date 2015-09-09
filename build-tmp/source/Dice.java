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

public class Dice extends PApplet {

int m= 25;
public void setup()
{
	size(1000,1000);
	noLoop();
}
public void draw()
{
	for(int b =50; b<=850; b+=100) {

		for( int a =50; a<=850; a+=100){

			Die all = new Die(a,b);

			all.show();

		}
	}
}
public void mousePressed()
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
	public void roll()
	{

		numRoll = (int) (Math.random()*6)+1;

		
	}
	public void show()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
