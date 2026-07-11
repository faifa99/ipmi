PImage imgInicio;
PImage imgPiltover;
PImage imgCaitlyn;
PImage imgJayce;
PImage imgViktor;
PImage imgZaun;
PImage imgJinx;
PImage imgVi;
PImage imgEkko;
PImage imgFinal;

int estado = 0;
int contador = 0;
PFont miFuente;
float cajaY = 600;
float cajaAlpha = 0;

void setup() {
  size(640, 480); 
  //modifique toda la carga de imagenes y la pase a 640x480
  imgInicio = loadImage("arcane_imagen_principal.jpg");
  imgInicio.resize(640, 480);
  imgPiltover = loadImage("piltover_ilustracion_completa.jpeg");
  imgPiltover.resize(640, 480);
  imgCaitlyn = loadImage("caitlyn_arcane.jpeg");
  imgCaitlyn.resize(640, 480);
  imgJayce = loadImage("jayce_arcane.jpeg");
  imgJayce.resize(640, 480);
  imgViktor = loadImage("viktor_arcane.jpeg");
  imgViktor.resize(640, 480);
  imgZaun = loadImage("zaun_ilustracion_completa.jpg");
  imgZaun.resize(640, 480);
  imgJinx = loadImage("jinx_arcane.jpeg");
  imgJinx.resize(640, 480);
  imgVi = loadImage("vi_arcane.jpeg");
  imgVi.resize(640, 480);
  imgEkko = loadImage("ekko_arcane.jpeg");
  imgEkko.resize(640, 480);
  imgFinal = loadImage("Arcane.jpg");
  imgFinal.resize(640, 480);
  miFuente = loadFont("MyanmarText-Bold-48.vlw");
  textFont(miFuente);
}

void draw() {
  if (estado == 0) {
    // Pantalla de inicio
    image(imgInicio, 0, 0);
    fill(0, 0, 250);
    stroke(255);
    strokeWeight(2);
    rect(260, 370, 120, 50);
    fill(255);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("INICIAR", 320, 395);

  } else if (estado == 1) {
    image(imgInicio, 0, 0);
    contador++;
    if (contador >= 300) {
      estado = 2;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 2) {
    image(imgPiltover, 0, 0);
    cajaAnimada("PILTOVER", "Ciudad del progreso que avanza\ncon hextech. Sus ciudadanos viven\nen prosperidad ignorando el costo.");
    contador++;
    if (contador >= 300) {
      estado = 3;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 3) {
    image(imgCaitlyn, 0, 0);
    cajaAnimada("CAITLYN", "Hija noble de Piltover y mejor\nagente de la Ejecucion. Precisa\ny determinada, lucha por la justicia.");
    contador++;
    if (contador >= 300) {
      estado = 4;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 4) {
    image(imgJayce, 0, 0);
    cajaAnimada("JAYCE", "Inventor que sueña con usar\nel hextech para mejorar el mundo.\nEl poder tiene un precio inesperado..");
    contador++;
    if (contador >= 300) {
      estado = 5;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 5) {
    image(imgViktor, 0, 0);
    cajaAnimada("VIKTOR", "Cientifico de Zaun que asciende\na Piltover. Busca trascender el\ncuerpo humano con tecnologia.");
    contador++;
    if (contador >= 300) {
      estado = 6;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 6) {
    image(imgZaun, 0, 0);
    cajaAnimada("ZAUN", "Las cloacas bajo Piltover. Mundo\noscuro y olvidado, pero con\nuna identidad que Piltover nunca tendra.");
    contador++;
    if (contador >= 300) {
      estado = 7;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 7) {
    image(imgJinx, 0, 0);
    cajaAnimada("JINX", "Antes era Powder, hermana de Vi.\nEl trauma la convirtio en agente\ndel caos, letal e impredecible.");
    contador++;
    if (contador >= 300) {
      estado = 8;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 8) {
    image(imgVi, 0, 0);
    cajaAnimada("VI", "Criada en las calles de Zaun.\nPura fuerza y determinacion.\nSolo quiere recuperar a su hermana.");
    contador++;
    if (contador >= 300) {
      estado = 9;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 9) {
    image(imgEkko, 0, 0);
    cajaAnimada("EKKO", "Prodigio de Zaun que invento\nun dispositivo para retroceder\nel tiempo y proteger a su gente.");
    contador++;
    if (contador >= 300) {
      estado = 10;
      contador = 0;
      cajaY = 600;
      cajaAlpha = 0;
    }
  } else if (estado == 10){
    image(imgFinal, 0, 0);
    botonReiniciar();
    cajaAnimada("ARCANE", "Final de presentacion");
  }
}
void cajaAnimada(String titulo, String descripcion) {
  cajaY = lerp(cajaY, 300, 0.08);
  cajaAlpha = lerp(cajaAlpha, 150, 0.06);

  noStroke();
  fill(0, 0, 0, cajaAlpha);
  rect(30, cajaY, 580, 150, 12);

  fill(255, 220, 50, cajaAlpha);
  textSize(26);
  textAlign(LEFT, TOP);
  text(titulo, 50, cajaY + 15);

  fill(220, 220, 220, cajaAlpha);
  textSize(16);
  text(descripcion, 50, cajaY + 58);
}

void botonReiniciar() {
  fill(200, 0, 0);
  stroke(255);
  strokeWeight(2);
  rect(420, 400, 180, 50);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("REINICIAR", 510, 425);
}
void mousePressed() {
  if (estado == 0 && mouseX > 260 && mouseX < 380 && mouseY > 370 && mouseY < 420) {
    println("Botón INICIAR presionado");
    estado = 1;
    contador = 0;
  }
  if (estado != 0 && mouseX > 420 && mouseX < 600 && mouseY > 400 && mouseY < 450) {
    println("Botón REINICIAR presionado");
    estado = 0;
    contador = 0;
    cajaY = 600;   
    cajaAlpha = 0;
  }
}
