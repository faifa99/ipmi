//https://youtu.be/Z-JhNZRK4OM video explicativo.
PImage img;
int CantCircIni;
float Diam;
int CantCircMod;
int Filas;
float posY;
float posX;
float anchoFila;
float espaciado;
boolean pausado = false;
boolean efectosActivos = true;
float tiempo = 0;
int FilasOriginal = 36;
int CantCircIniOriginal = 6;

void setup() {
  size(800, 400);
  img = loadImage("12.jpg");
  noStroke();
  reiniciar();
}

void draw () {
  background(255, 255, 255);
  image(img, 0, 0);
  if (!pausado) {
    tiempo = tiempo + 0.02;
  }
  Filas = FilasOriginal;
  CantCircIni = CantCircIniOriginal;
  anchoFila = 400; 
  posY = 430;
  push();
  translate(400, 0);
  for (int f = 0; f < Filas; f++) {
    CantCircMod = CantCircIni + f * 3;
    espaciado = calcularEspaciado(anchoFila, CantCircMod);
    Diam = espaciado * 0.95; 
    posY = posY - espaciado;
    float angulo = 0;
    if (efectosActivos) {
      angulo = map(f, 0, Filas, 0, PI / 16);
    }
    for (int i = 0; i < CantCircMod; i++) {
      posX = (i * espaciado) + espaciado / 2;
      float variacion = 0;
      if (efectosActivos) {
        variacion = sin(tiempo + f * 0.3 + i * 0.5) * 3;
      }
      float diamFinal = Diam + variacion;
      push();
      translate(posX, posY); 
      rotate(angulo);        
      fill(0, 0, 0);
      noStroke();
      ellipse(0, 0, diamFinal, diamFinal); 
      pop();
    }
  }
  pop();
  dibujarInstrucciones("ESPACIO: pausar | R: reiniciar | A: activar/desactivar efectos");
}
float calcularEspaciado(float ancho, int cantidad) {
  return ancho / cantidad;
}
void dibujarInstrucciones(String mensaje) {
  fill(255);
  stroke(0);
  rect(500, 350, 290, 40);
  fill(0);
  noStroke();
  textSize(10);
  textAlign(CENTER, CENTER);
  text(mensaje, 500 + 145, 350 + 20);
}
void reiniciar() {
  Filas = FilasOriginal;
  CantCircIni = CantCircIniOriginal;
  pausado = false;
  efectosActivos = true;
  tiempo = 0;
}
void keyPressed() {
  if (key == ' ') {
    pausado = !pausado;
  } else if (key == 'r' || key == 'R') {
    reiniciar();
  } else if (key == 'a' || key == 'A') {
    efectosActivos = !efectosActivos;
  }
}
