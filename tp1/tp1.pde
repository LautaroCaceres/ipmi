PImage imagen;
void setup(){
  size(800,400);
  background(#354F52);
  imagen=loadImage("escultura_mono.jpg");
}

void draw(){
  background(#354F52);
  image(imagen,0,0);
  fill(#A97142);

  //cuerpo
  strokeWeight(2);
  stroke(0);
  rect(490,90,220,100,40,40,40,40);
  noStroke();
  rect(515,175,170,150,40,40,40,40);

  //pierna izquierda
  strokeWeight(2);
  stroke(0);
  quad(515,306,586,325,503,385,460,335);
  quad(465,336,610,355,610,395,464,385);
  
  //brazo izquierdo
  quad(490,114,530,125,490,375,442,360);
  ellipse(468,360,70,50);

  //dedos izquierda
  ellipse(445,375,15,30);
  ellipse(460,375,15,30);
  ellipse(475,375,15,30);
  ellipse(490,375,15,30);

  //brazo derecho
  quad(668,130,709,121,730,350,680,350);
  ellipse(707,345,50,60);

  //pierna derecha
  quad(625,330,730,240,770,300,670,385);
  quad(710,270,753,296,640,395,600,380);
  noStroke(); 
  quad(709,263,757,290,757,305,701,273);
  stroke(0);

  //dedos pie derecho
  ellipse(628,365,30,15);
  ellipse(628,380,30,15);
  ellipse(628,395,30,15);

  //dedos pie izquierdo
  ellipse(608,360,30,15);
  ellipse(608,375,30,15);
  ellipse(608,390,30,15);

  //Cabeza
  ellipse(600,100,90,50);
  noStroke();
  ellipse(600,45,80,80);
  rect(560,50,80,60);

  //detalles cara
  stroke(0);
  strokeWeight(2);
  rect(570,40,60,60,0,0,10,10);
  ellipse(585,50,5,5);
  ellipse(615,50,5,5);
  triangle(600, 40, 570, 85, 630, 85);
  noStroke();
  rect(572,80,57,10);
  stroke(0);
  line(600, 40, 600, 75);
  fill(0);
  strokeWeight(2);
  ellipse(592,75,10,15);
  ellipse(608,75,10,15);
  
  //detalles cuerpo
  noFill();
  rect(530,125,70,80,30,30,0,0);
  rect(600,125,70,80,30,30,0,0);
  ellipse(600,260,115,100);
 
  //luces
  fill(#FFD4A3,180);
  noStroke();
  ellipse(620,25,10,15);
  ellipse(675,107,20,10);
  ellipse(724,275,20,25);
  ellipse(650,140,20,20);
  quad(509,152,520,152,489,314,480,308);
}
