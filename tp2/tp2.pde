PImage[] imagenes = new PImage[9];
int estado = 0;
int contador = 0;
PFont miFuente;
float cajaY = 600;
float cajaAlpha = 0;

void setup() {
  size(640, 480);
  imagenes[0] = loadImage("arcane_imagen_principal.jpg");
  imagenes[1] = loadImage("piltover_ilustracion_completa.jpeg");
  imagenes[2] = loadImage("caitlyn_arcane.jpeg");
  imagenes[3] = loadImage("jayce_arcane.jpeg");
  imagenes[4] = loadImage("viktor_arcane.jpeg");
  imagenes[5] = loadImage("zaun_ilustracion_completa.jpg");
  imagenes[6] = loadImage("jinx_arcane.jpeg");
  imagenes[7] = loadImage("vi_arcane.jpeg");
  imagenes[8] = loadImage("ekko_arcane.jpeg");


  for (int i = 0; i < imagenes.length; i++) {
    if (imagenes[i] != null) {
      imagenes[i].resize(640, 480);
    } else {
      println("Alerta: Imagen " + i + " es null.");
    }
  }
  miFuente = loadFont("MyanmarText-Bold-48.vlw"); 
  textFont(miFuente);
}

void draw() {
  if (estado == 0) {
    // Pantalla de inicio
    image(imagenes[0], 0, 0);
    fill(0, 0, 250);
    stroke(255);
    strokeWeight(2);
    rect(260, 370, 120, 50);
    fill(255);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("INICIAR", 320, 395);

  } else if (estado == 1) {
    image(imagenes[0], 0, 0);
    botonReiniciar();
    contador++;
    if (contador >= 300) {
      estado = 2;
      contador = 0; 
      cajaY = 600;    
      cajaAlpha = 0;  
    }
  } else if (estado == 2) {
    image(imagenes[1], 0, 0);
    botonReiniciar();
    cajaAnimada("PILTOVER", "Ciudad del progreso que avanza\ncon hextech. Sus ciudadanos viven\nen prosperidad ignorando el costo.");
    contador++;
     if (contador >= 300) { 
     estado = 3;
     contador = 0;
     cajaY = 600;    
     cajaAlpha = 0;  
   }
  } else if (estado == 3) {
    image(imagenes[2], 0, 0);
    botonReiniciar();
    cajaAnimada("CAITLYN", "Hija noble de Piltover y mejor\nagente de la Ejecucion. Precisa\ny determinada, lucha por la justicia.");
    contador++;
    if (contador >= 300) { 
    estado = 4; 
    contador = 0;
    cajaY = 600;    
    cajaAlpha = 0;  
  }

  } else if (estado == 4) {
    image(imagenes[3], 0, 0);
    botonReiniciar();
    cajaAnimada("JAYCE", "Inventor que sueña con usar\nel hextech para mejorar el mundo.\nEl poder tiene un precio inesperado..");
    contador++;
    if (contador >= 300) {
    estado = 5;
    contador = 0; 
    cajaY = 600;    
    cajaAlpha = 0;  
  }

  } else if (estado == 5) {
    image(imagenes[4], 0, 0);
    botonReiniciar();
    cajaAnimada("VIKTOR", "Cientifico de Zaun que asciende\na Piltover. Busca trascender el\ncuerpo humano con tecnologia.");
    contador++;
    if (contador >= 300) { 
    estado = 6;
    contador = 0; 
    cajaY = 600;    
    cajaAlpha = 0; 
  }

  } else if (estado == 6) {
    image(imagenes[5], 0, 0);
    botonReiniciar();
    cajaAnimada("ZAUN", "Las cloacas bajo Piltover. Mundo\noscuro y olvidado, pero con\nuna identidad que Piltover nunca tendra.");
    contador++;
    if (contador >= 300) { 
    estado = 7;
    contador = 0; 
    cajaY = 600;   
    cajaAlpha = 0; 
  }

  } else if (estado == 7) {
    image(imagenes[6], 0, 0);
    botonReiniciar();
    cajaAnimada("JINX", "Antes era Powder, hermana de Vi.\nEl trauma la convirtio en agente\ndel caos, letal e impredecible.");
    contador++;
    if (contador >= 300) { 
    estado = 8;
    contador = 0; 
    cajaY = 600;    
    cajaAlpha = 0;  
  }

  } else if (estado == 8) {
    image(imagenes[7], 0, 0);
    botonReiniciar();
    cajaAnimada("VI", "Criada en las calles de Zaun.\nPura fuerza y determinacion.\nSolo quiere recuperar a su hermana.");
    contador++;
    if (contador >= 300) { 
    estado = 9; contador = 0; 
    cajaY = 600;    
    cajaAlpha = 0;  
  }

  } else if (estado == 9) {
    image(imagenes[8], 0, 0);
    botonReiniciar();
    cajaAnimada("EKKO", "Prodigio de Zaun que invento\nun dispositivo para retroceder\nel tiempo y proteger a su gente.");
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
  text("REINICIAR", 510, 425); // centro del rect: 420+90, 400+25
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
