//your code here
int x,y, myColor;
Particle [] stars;
OddballParticle [] face;
void setup()
{
	//your code here
	size(300,300);
	stars = new Particle[100];
	face = new OddballParticle[1];
	for(int u=0;u<face.length;u++){
		face[u]=new OddballParticle();
	}

	for(int i=0;i<stars.length;i++){
		stars[i]= new Particle();
	}
	x= 150;
	y=150;
	myColor = color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    

}
void draw()
{
	//your code here
	background(0);
	for(int i=0;i<stars.length;i++){
		fill(myColor);
		stars[i].show();
		stars[i].move();

	}
	for(int u=0; u<face.length;u++){
		face[u].show();
		face[u].move();
	}

}
class Particle
{
	//your code here
	double myAngle, mySpeed; 
	double myX, myY;

	Particle(){

		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*4;
		myX = 150;
		myY = 150;
	}
	void show(){
		//fill(myColor);
		ellipse((float)myX,(float)myY,10,10);
	}
	void move(){
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
	int myX, myY;
	OddballParticle(){
		myX=150;
		myY=150;
	}
	void show(){
		fill(229,177,113);
		ellipse(myX,myY,40,40);
		fill(250);
		ellipse(myX -8, myY-8, 10, 10);
		ellipse(myX +8, myY-8, 10, 10);
		fill(0);
		ellipse(myX -8, myY-8, 5, 5);
		ellipse(myX +8, myY-8, 5, 5);
		fill(250,0,0);
		ellipse(myX,myY+4,6,6);
	}
	void move(){
		myX = myX + (int)(Math.random()*3)-1;
		myY= myY  + (int)(Math.random()*3)-1;
	}
}


