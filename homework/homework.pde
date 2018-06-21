void setup(){
  size(500,500);
  drawLine(200,300,-90,0);
}

void drawLine(float x, float y,float angle ,float level){
  level++;
  if(level>5){
    noStroke();
    fill(255,255,255);
    ellipse(x,y,25,25);
    fill(230,65,180);
    ellipse(x,y,12,12);
    return;
  }
  
  stroke(1);
  int width=30;
  float x2=x+cos(angle/180*PI)*width;
  float y2=y+sin(angle/180*PI)*width;
  line(x,y,x2,y2);
  drawLine(x2,y2,(angle+20),level);
  
    float x3=x+cos(angle/180*PI)*width;
  float y3=y+sin(angle/180*PI)*width;
  line(x,y,x3,y3);
  drawLine(x3,y3,(angle-22),level);
}

void draw(float x,float y){
  x=x+1;
  y=y+1;
  fill(33,128,88);
  ellipse(155,155,25,25);
}
