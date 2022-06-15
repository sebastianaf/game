//Declarar variables de posición
int x;
int y;
int vx;
int vy;
int yb1;
int yb2;
boolean w, s, a, b;
//Crear o abrir una ventana
void setup (){
  size(450,450);
  //Posición inicial 
  x=100;
  y=100;
  vx=3;
  vy=3;
 
}

//Función principal draw
 void draw(){
   background(0,0,0);
   noStroke();
   fill(0,255,0);
   ellipse(x, y, 45, 45);
   fill(255,0,0);
   rect(10,yb1,30,180);
   rect(width-40,yb2,30,180);
  x=x+vx;
  y=y+vy;
  
  if(x<65 && y>yb1 && y<yb1+180){
    vx=vx*-1;
  }
  if(x>width-65 && y>yb2 && y<yb2+180){
    vx=vx*-1;
  }
  
  if(x>width || x<0){
    x=width/2;
  } 
  
  if(y>height || y<0){
    vy=vy*-1;
  } 
  
  if(keyPressed){
    if (key=='s'){
      yb1+=3;
      yb2+=3;
      s=true;
    }
    if (key=='w'){
      System.out.println("w:on");
      yb1-=3;
      yb2-=3;
      w=true;
    }
    if (keyCode==DOWN){
      yb2-=3;
      a=true;
    }
    if (keyCode==UP){
        b=true;
        yb2+=3;
    }
  }
}  

void keyPressed(){
  if (key=='s'){
    System.out.println("s:on");
    s=true;
  }
  if (key=='w'){
    System.out.println("w:on");
    w=true;
  }
  
  if (keyCode==DOWN){
    a=true;
  }
  if (keyCode==UP){
    b=true;
  }
}

void keyRealeased(){
  if (key=='s'){
    System.out.println("s:off");
    s=false;
  }
  if (key=='w'){
    System.out.println("w:off");
    w=false;
  }
    
  if (keyCode==DOWN){
    a=false;
  }
  if (keyCode==UP){
    b=false;
  }
}
