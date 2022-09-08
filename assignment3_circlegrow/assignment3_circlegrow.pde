float diam;
int counter;
int trackSize;

void setup() {
  counter = 0;
  trackSize = 0;
 
  size(200,200);
  background(255);
  smooth();    
}

void draw() {

  // Increase this variable by 1 every call of draw()
  counter = counter + 1; 

  // while count increases every call of draw() from 0 to 30, the conditional below returns false
  if(counter > 30){ // do nothing until 'counter' is greater than 30.  
       counter = 0; // reset the counter every time the conditional triggers
       trackSize = trackSize + 1; // increase this variable by 1 every call of draw()
       //if(trackSize ???){ // the var, 'counter' is a strong reference for how trackSize is incorporated
       // reset track size here
     background(255);
       //}
 
  }
  
  fill(200,0,0);
  
  diam = 20; // * ??? ; // hmm, what variable - that is cycling from small to bigger - would be good to incorporate?  
  ellipse(width/2,height/2,diam,diam);
}
