//https://www.youtube.com/watch?v=EOCA4H2TXVY
int movX = 0;
PImage img;
color c1, c2, c3;
boolean efectoTam = true;
int contador=0;

void setup() {
  size(800, 400);
  img=loadImage("foto1.jpg");

  c1 = color(202, 38, 29);
  c2 = color(255, 89, 47);
  c3 = color(255, 193, 55);
}

void draw() {
if(contador<600){
  contador++;
  background(0);
  textSize(30);
  text("R/r para reiniciar", 50, 100);
  text("Mover el mouse en en eje x de la obra para una animacion", 50, 140);
  text("T/t para descativar/activar el efecto del tamaño", 50, 180);
  text("Mover el mouse por la obra para modificar los tamaños", 50, 220);
  text("Hacer click para cambiar colores", 50, 260);
}else{
  if (mouseDerecha()) {
    movX = 10;
  } else {
    movX = 0;
  }
  background(0);
  dibujar1();
  dibujar2();
  dibujar3();
  dibujar4();
  dibujar5();
  image(img, 0, 0);
}
}

boolean mouseDerecha() {
  return mouseX >= 600;
}

void dibujar1() {
  fill(c1);
  noStroke();
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      ellipse((470 + i * 130), (70 + j * 130), 125, 125);
    }
  }
}

void dibujar2() {
  fill(c2);
  noStroke();
  float tam = 95;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      int circulox = 465 + i * 130 + movX;
      int circuloy = 80 + j * 130;
      float d = dist(mouseX, mouseY, circulox, circuloy);
      if (efectoTam) {
        tam = calcularTam(d, 105, 85);
      }
      ellipse(circulox, circuloy, tam, tam);
    }
  }
}

void dibujar3() {
  fill(c3);
  noStroke();
  float tam=70;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      int circulox = 460 + i * 130 + movX * 2;
      int circuloy = 85 + j * 130;
      float d = dist(mouseX, mouseY, circulox, circuloy);
      if (efectoTam) {
        tam = calcularTam(d, 80, 60);
      }
      ellipse(circulox, circuloy, tam, tam);
    }
  }
}

void dibujar4() {
  fill(c2);
  noStroke();
  float tam=50;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      int circulox = 455 + i * 130 + movX * 3;
      int circuloy = 90 + j * 130;
      float d = dist(mouseX, mouseY, circulox, circuloy);
      if (efectoTam) {
        tam = calcularTam(d, 60, 40);
      }
      ellipse(circulox, circuloy, tam, tam);
    }
  }
}

void dibujar5() {
  float tam=25;
  fill(c3);
  noStroke();
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      int circulox = 450 + i * 130 + movX * 4;
      int circuloy = 95 + j * 130;
      float d = dist(mouseX, mouseY, circulox, circuloy);
      if (efectoTam) {
        tam = calcularTam(d, 35, 15);
      }
      ellipse(circulox, circuloy, tam, tam);
    }
  }
}

float calcularTam(float distancia, float tamMax, float tamMin) {
  return map(distancia, 0, width, tamMax, tamMin);
}

void activarEfectoTamaño(boolean activar) {
  efectoTam = activar;
}

void mousePressed() {
  c1 = color(random(255), random(255), random(255));
  c2 = color(random(255), random(255), random(255));
  c3 = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    c1 = color(202, 38, 29);
    c2 = color(255, 89, 47);
    c3 = color(255, 193, 55);
    contador=0;
    fill(255);
  }

  if (key == 't' || key == 'T') {
    activarEfectoTamaño(!efectoTam);
  }
}
