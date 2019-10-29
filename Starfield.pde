//your code here
int x,y,myColor;

Particle [] stars;
void setup()
{
	//your code here
	size(300,300);
	stars = new Particle[30];
	//OddballParticle bob = new OddballParticle;
	for(int i=0;i<stars.length;i++){
		stars[i]= new Particle();
	}
	x= 150;
	y=150;


}
void draw()
{
	//your code here
	for(int i=0;i<stars.length;i++){
		stars[i].show();
	}
	//stars.move();

}
class Particle
{
	//your code here
	double myAngle, mySpeed; 
	float myX, myY;

	Particle(){

		myAngle = (Math.random()*2);
		mySpeed = (Math.random()*10);
		myX = 320;
		myY = 240;
	}
	void show(){
		ellipse(myX,myY,10,10);
	}
	void move(){
		myX = (float)Math.cos(myAngle) * mySpeed;
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
	OddballParticle(){

	}
	void show(){

	}
	void move(){

	}
}


