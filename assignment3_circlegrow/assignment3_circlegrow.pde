float diam;
int counter;
int trackSize;

void setup() {
  counter = 0;
  trackSize = 0;
 
  size(700,700);
  background(255);
  smooth();    
}

void draw() {

  // Increase this variable by 1 every call of draw()
  counter = counter + 1; 

  // while count increases every call of draw() from 0 to 30, the conditional below returns false
  if(counter >= 30){ // do nothing until 'counter' is greater than 30.  
     // reset the counter every time the conditional triggers
       trackSize = trackSize + 1;    
       background(0);// increase this variable by 1 every call of draw()
    if (trackSize >= 35)
    {
     // the var, 'counter' is a strong reference for how trackSize is incorporated
       // reset track size here
   trackSize = trackSize + 1;    
   if(trackSize >= 60)
   trackSize = 0;
     background(250);
       }
 
  }
  fill(200,0,0);
  
  diam = trackSize * 10; // use trackSize to modify the circle size 
  ellipse(width/2,height/2,diam,diam);
}
