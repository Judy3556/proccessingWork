void setup(){
  size(500,500);
  drawLine(250,300,-90,0);
}

void drawLine(float x, float y,float angle ,float level){
  level++;
  if(level>10){
    noStroke();
    fill(255,255,255);
    ellipse(x,y,10,10);

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

void draw(){
  line(250,300,0,-10000);
fill(241,24,44);
ellipse(200,300,25,25);
rect(188,320,25,55);
ellipse(300,300,25,25);
triangle(300,320,280,370,320,370);
}
