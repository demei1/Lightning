int startX = 0;
int startY = 0;
int endX = 20;
int endY = 30;

int red = 0;
int green = 0;
int blue = 0;

int centerX = 0;
int centerY = 0;

int diameter = 1;
int rotationRepeat = 0;
//int rotation = 0;
void setup()
{
  background(0,0,0);
  size(300,300);

 
}

void draw()
{
  
  
  //fade
   fill (0,0,0, 15);
   stroke (0,0,0);
   rect( 0, 0, 300 ,300);
   
   
   
   stroke(red, green, blue);
   strokeWeight(3);
   //gets center from mouse
   resetMatrix();
   translate (centerX, centerY);
   
  
   //ball of lightning
   ellipse(0,0,diameter,diameter);
   diameter += 1;
   if (diameter > 20){
   diameter = 0;
   }
   
   //zaps
   for (int zaps = 0; zaps < (int)(Math.random()*5); zaps += 1){
   rotate(zaps*30);
   endX = startX + (int)(Math.random()*10);
   endY = startY + (int)((Math.random()*19)-9);
   line(startX, startY, endX+5, endY);
   startX = endX;
   startY = endY;
  }
   //out of screen
   if (endX > 300 || endY >300){
   startX = 0;
   startY = 20;
   endX = 20;
   endY = 30;
   background (0);
   }
}
void mousePressed()
{

  red = (int)(Math.random()*256);
  green= (int)(Math.random()*256);
  blue = (int)(Math.random()*256);
  background(0);
  centerX = mouseX;
  centerY = mouseY;
 
  
  
  startX = 0;
  startY = 0;
  System.out.println(centerX);
  System.out.println(centerY);
  

}

void keyPressed()
{
 background(0);
}
