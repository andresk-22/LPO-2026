void setup(){
  size(700, 700);
}

void draw(){
  int n=5, w=width, h=height, x1=0, x2=0;
  
  if(mousePressed){background(#FFF398);   stroke(#0D0C64);}
  else{background(#0D0C64); stroke(#FFF398);}
  for(int i=0; i<n+1; i++)
  {
    
    for(int j=0; j<n+1; j++)
    {
      line(x1, 0, x2, h);
      x2+= w/n;
    }
    x2=0;
    x1+= w/n;
  }
}
