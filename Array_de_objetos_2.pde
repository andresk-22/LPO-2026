class Movil{
  PVector pos;
PVector vel;
 int r=10;
//contructor

Movil(float posX,float posY,float velX,float velY){
  vel =new PVector(velX,velY);
  pos= new PVector (posX,posY);
}
 
 //acciones
 
 
 void moverPelota(){
  pos.add(vel);
   
 }
 void mostrarPelota(){
   circle(pos.x,pos.y,r);
 }
 
 
 void rebotar(){
  if (pos.x >width-r/2 || pos.x <= r/2) {
      vel.x= vel.x*-1;
    }

    if (pos.y >height-r/2 || pos.y <= r/2) {
      vel.y= vel.y*-1;
    }
    
 }
 
 
  //reb
}

Movil[][] m;
int cantX=10;
int cantY=10;
void setup(){
 size(800,600); 
 m= new Movil[cantX][cantY];
float pX=width/cantX, pY=height/cantY, vX=random(-10,10),vY=random(-10,10); 
 for(int x=0;x<cantX;x++){
   for(int y=0;y<cantY;y++){
  m[x][y]= new Movil(pX*x,pY*y,random(-10,10),random(-10,10)); 
 //  m[x][y]= new Movil(pX*x,pY*y,0,0); 
  println(pX*x,pY*y,vX*x,vY*y,"x:"+x,"y:"+y);
   }
 }
}


void draw(){
  background(0);
  for(int x=0;x<cantX;x++){
    for(int y=0;y<cantY;y++){
//  println(m[x][y].vel.x,m[x][y].vel.y);
  m[x][y].moverPelota();
 
  
  m[x][y].mostrarPelota();
m[x][y].rebotar();
    }
  }
}
