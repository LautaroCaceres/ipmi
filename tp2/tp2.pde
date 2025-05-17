int pantallas = 1, contadorF = 0;
PFont miFuente;
PImage foto1, foto2, foto3, foto4, foto5, foto6, foto7, foto8, foto9, foto10;
float x1=0, y1=0, t1=1;


void setup() {
  size(640, 480);
  miFuente = loadFont("ComicSansMS-Italic-30.vlw");
  foto1=loadImage("f1.jpg");
  foto2=loadImage("f2.jpg");
  foto3=loadImage("f3.jpg");
  foto4=loadImage("f4.jpg");
  foto5=loadImage("f5.jpg");
  foto6=loadImage("f6.jpg");
  foto7=loadImage("f7.jpg");
  foto8=loadImage("f8.jpg");
  foto9=loadImage("f9.jpg");
  foto10=loadImage("f10.jpg");
}

void draw() {
  background(0);
  fill(255);
  textFont(miFuente);
  contadorF++;
  //println(contadorF);


  if (pantallas==1) {
    if (contadorF<600) {
      image(foto1, 0, 0);
      text("Lucy Heartfilia llega a Magnolia buscando \nnunirse al gremio de magos Fairy Tail", x1, 75);
      x1++;
    } else {
      x1=640;
      pantallas++;
    }
  } else if (pantallas==2) {
    if (contadorF>600 && contadorF<1200) {
      image(foto2, 0, 0);
      text("Conoce a Natsu Dragneel, un mago de \nfuego que busca a su padre dragón, Igneel", 50, y1);
      y1++;
    } else {
      y1=640;
      pantallas++;
    }
  } else if (pantallas==3) {
    if (contadorF>1200 && contadorF<1800) {
      image(foto3, 0, 0);
      text("Lucy entra a Fairy Tail y forma equipo \ncon Natsu, Happy, Gray y Erza", x1, 150);
      x1=x1-1.2;
    } else {
      pantallas++;
    }
  } else if (pantallas==4) {
    if (contadorF>1800 && contadorF<2400) {
      image(foto4, 0, 0);
      text("Realizan misiones mágicas, combaten \n monstruos y se enfrentan a gremios \noscuros peligrosos", 50, y1);
      y1=y1-1.2;
    } else {
      x1=0;
      y1=0;
      pantallas++;
    }
  } else if (pantallas==5) {
    if (contadorF>2400 && contadorF<3000) {
      image(foto5, 0, 0);
      text("Fairy Tail lucha contra Phantom \nLord, gremio rival que \nataca a sus miembros.", x1, y1);
      x1++;
      y1++;
    } else {
      x1=640;
      y1=480;
      pantallas++;
    }
  } else if (pantallas==6) {
    if (contadorF>3000 && contadorF<3600) {
      image(foto6, 0, 0);
      text("Durante el Torneo de Magia \nenfrentan a otros gremios para \nrecuperar el prestigio perdido", x1, y1);
      x1=x1-1.5;
      y1=y1-1;
    } else {
      x1=0;
      y1=480;
      pantallas++;
    }
  } else if (pantallas==7) {
    if (contadorF>3600 && contadorF<4200) {
      image(foto7, 0, 0);
      textSize(t1);
      text("Viajan al pasado con el Eclipse para \ndetener dragones que amenazan\n con destruir todo", 50, 100);
      t1=t1+0.1;
    } else {
      t1=70;
      pantallas++;
    }
  } else if (pantallas==8) {
    if (contadorF>4200 && contadorF<4800) {
      image(foto8, 0, 0);
      textSize(t1);
      text("Descubren que Zeref, el mago oscuro \ninmortal, es el mayor enemigo\n de la historia", 50, 100);
      t1=t1-0.1;
    } else {
      pantallas++;
    }
  } else if (pantallas==9) {
    if (contadorF>4800 && contadorF<5400) {
      image(foto9, 0, 0);
      text("Natsu descubre que es un demonio de \nE.N.D. creado por el propio Zeref", x1, y1);
      x1=x1+0.5;
      y1=y1-1;
    } else {
      x1=640;
      y1=0;
      pantallas++;
    }
  } else if (pantallas==10) {

    if (x1 > 0 && y1 <440) {
      image(foto10, 0, 0);
      text("Tras duras batallas, Fairy Tail derrota a\n Zeref y a Acnologia, salvando el mundo", x1, y1);
      x1=x1-1;
      y1=y1+0.5;

      fill(0);
      rect(500, 400, 125, 50);
      fill(255);
      text("Volver", 515, 435);
      fill(0);
    } else {
      image(foto10, 0, 0);
      text("Tras duras batallas, Fairy Tail derrota a\n Zeref y a Acnologia, salvando el mundo", x1, y1);
      fill(0);
      rect(500, 400, 125, 50);
      fill(255);
      text("Volver", 515, 435);
      fill(0);
    }
  }
}

void mouseClicked() {
  if (pantallas==10) {
    if (mouseX > 500 && mouseX < 625 && mouseY > 400 && mouseY < 450) {
      pantallas=1;
      contadorF=0;
      x1=0;
      y1=0;
      t1=1;
    }
  }
}
