PImage Imagen; 
int D;
void setup() {
  size(800,400);
  Imagen=loadImage("FotoEmilio.jpg");
}
void draw() {
  D= 400;
  background(150,200,250);
  //uso la variable D global ya que contiene el valor 400 para "calcar" figuras y pasarlas
  //marco puerta superior
  fill(105,40,0);
  noStroke();
  rect(34+D,32,400,22);
  //marco de la puerta exterior der
  fill(213,219,174);
  noStroke();
  rect(274+D,38,34,800);
  //marco puerta superior sombra exterior (nose como explicarlo)
  fill(204,209,171);
  noStroke();
  beginShape();
  //esquina superior izquierda
  vertex(167+D,38);
  //esquina inferior izquierda
  vertex(167+D,54);
  //esquina inferior derecha
  vertex(280+D,54);
  //esquina superior derecha
  vertex(316+D,38);
  endShape(CLOSE); 
  //marco puerta izq
  fill(105,40,0);
  noStroke();
  rect(24+D,32,30,400);
  //puerta izq
  fill(107,61,44);
  noStroke();
  rect(54+D,38,120,400);
  fill(145,84,49); //parte cuadrada puerta interior
  noStroke();
  rect(72+D,53,82,200);
  //pared fondo der
  fill(84,113,100);
  noStroke();
  rect(360+D, 0, 40, 400);
  //pared fondo izq
  fill(84,113,100);
  noStroke();
  rect(0+D,0,40,400);
  //pared superior
  fill(84,113,100);
  noStroke();
  rect(0, 0, 800, 32);
  //piso fondo
  fill(138,81,36);
  noStroke();
  rect(0, 375, 800, 40);
  //puerta derecha
  fill(186,66,66);
  noStroke();
  rect(302+D,38,68,337);
  noStroke(); //esquina superior
  triangle(300+D, 38, 370+D, 38, 370+D, 13);
  fill(120,52,52);
  noStroke(); //sombra de la puerta interior (nose como decirle)
  beginShape();
  vertex(369+D, 13);
  vertex(378+D, 15);
  vertex(379+D, 375);
  vertex(370+D, 375);
  endShape(CLOSE);
  fill(186,66,66); //puerta esquina inferior (recurri a separarla por partes)
  noStroke();
  beginShape();
  vertex(301+D, 375);  
  vertex(370+D, 375); 
  vertex(370+D, 396);
  endShape();
  fill(120,52,52); //sombra puerta esquina inferior
  noStroke();
  rect(370+D,364,9,33);
  fill(120,52,52); //cuadrado medio en la puerta
  noStroke();
  beginShape();
  vertex(317+D,223);
  vertex(355+D,223);
  vertex(355+D,278);
  vertex(317+D,275);
  endShape(CLOSE);
  fill(120,52,52); //cuadrado bajo en la puerta
  noStroke();
  beginShape();
  vertex(317+D,293);
  vertex(355+D,298);
  vertex(355+D,364);
  vertex(317+D,355);
  endShape(CLOSE);
  //ventana puerta der
  fill(204,209,171);
  noStroke();
  beginShape();
  vertex(354+D, 203);
  vertex(354+D, 38);
  vertex(317+D, 51);
  vertex(317+D, 203);
  endShape(CLOSE);
  fill(150,200,250); //reflejo ventana
  noStroke();
  beginShape();
  vertex(320+D,52);
  vertex(353+D,52);
  vertex(354+D,201);
  vertex(321+D,201);
  endShape();
  fill(255,255,153); //reflejo rayo de luz entrante
  noStroke();
  beginShape();
  vertex(319+D,52);
  vertex(319+D,65);
  vertex(346+D,201);
  vertex(354+D,201);
  vertex(354+D,76);
  vertex(330+D,52);
  endShape();
  //rayo de luz entrante x la puerta
  fill(255,255,153);
  noStroke();
  beginShape();
  vertex(226+D,53);
  vertex(257+D,53);
  vertex(239+D,191);
  vertex(235+D,189);
  vertex(225+D,129);
  vertex(116+D,160);
  vertex(118+D,248);
  vertex(48+D,158);
  endShape();
  fill(222,222,222); //nube fondo abajo
  noStroke();
  rect(200+D,82,60,6);
  fill(222,222,222); //nube fondo arriba
  noStroke();
  rect(174+D,62,60,6);
  //marco piso inferior
  fill(30,38,8);
  noStroke();
  rect(D,367,40,9); 
  fill(30,38,8); //marco piso lado derecho
  noStroke();
  rect(379+D,368,40,9); 
  //cobertura de pared izquierda 
  fill(92,102,63); 
  noStroke();
  rect(0+D,227,40,140);
  fill(30,38,8); //parte superior abajo
  noStroke();
  rect(D,222,40,5);
  fill(135,143,131); // parte blanca medio
  noStroke();
  rect(D,210,40,12);
  fill(30,38,8); //parte superior arriba
  noStroke();
  rect(D,207,40,3);
  //cobertura de pared derecha
  fill(92,103,63); 
  noStroke();
  rect(378+D,228,40,140);
  fill(30,38,8); //parte superior abajo
  noStroke();
  rect(378+D,223,40,5);
  fill(135,143,131); // parte blanca medio
  noStroke();
  rect(378+D,211,40,12);
  fill(30,38,8); //parte superior arriba
  noStroke();
  rect(378+D,208,40,3);
  //fondo cielo
  image(Imagen,0,0,400,400);
  //PARTE DELANTERA MESA ETC
  fill(255,255,153); //sombra de luz inferior
  noStroke();
  beginShape();
  vertex(21+D,287);
  vertex(22+D,393);
  vertex(73+D,392);
  vertex(73+D,270);
  endShape(CLOSE);
  fill(26,22,22); //estructura inferior mesa
  noStroke();
  rect(92+D,342,15,60);//pata izquierda
  rect(260+D,340,15,60);//pata derecha
  rect(86+D,306,180,40);//madera que soporta la mesa
  fill(59,13,3);//sombra mesa sobre el piso
  noStroke();
  rect(105+D,346,100,80);
  fill(135,108,64); //sombra de la mesa
  endShape();
  ellipse(185+D,270,250,115);
  fill(168,134,79);//mesa
  endShape();
  ellipse(185+D,260,250,115);
  //MESA Y TODO LO QUE HAY ARRIBA
  fill(169,191,151); //mantel que cae
  noStroke();
  beginShape();
  vertex(141+D,316);
  vertex(128+D,380);
  vertex(168+D,387);
  vertex(185+D,383);
  vertex(238+D,395);
  vertex(267+D,391);
  vertex(282+D,376);
  vertex(305+D,382);
  vertex(321+D,372);
  vertex(306+D,274);
  endShape(CLOSE);
  fill(187, 204, 175); //mantel,utilizo bezierShape porque me permite conectar dos puntos uno inicial y otro final donde puedo cambiar con dos puntos de control la forma de la curva (busque un tutorial por youtube).
  noStroke();
  beginShape();
  vertex(308+D, 273); // punto inicial
  bezierVertex(
    270+D, 321,  // baja la curva
    200+D, 318,  
    142+D, 316   //punto final
  );
  endShape();
  beginShape(); //esquina superior a la curva que dividi en dos trozos por mi salud mental
  vertex(306+D,274);
  vertex(168+D,274);
  vertex(142+D,316);
  endShape(CLOSE);
  fill(106, 133, 95); //sombra/pliegues del mantel
  noStroke();
  triangle(704,383,678,305,683,377);
  triangle(568,388,584,384,571,330);
  triangle(665,392,643,323,654,393);
  triangle(541,383,533,381,549,322);
  //sobre mesa
  fill(75,97,105); //fondo atras del vino con vertices (separo para hacer mas comodo)
  beginShape(); //forma triangular xq no cerraba el otro vertice
  vertex(228+D,127);
  vertex(111+D,160);
  vertex(135+D,282);
  endShape();
  noStroke();
  beginShape(); //vertice que esta sobre la mesa
  vertex(226+D,128);
  vertex(135+D,280);
  vertex(112+D,161);
  vertex(219+D,131);
  vertex(111+D,161);
  vertex(116+D,269);
  vertex(101+D,271);
  vertex(84+D,288);
  vertex(245+D,315);
  vertex(260+D,273);
  vertex(255+D,271);
  endShape();
  //vino sobre el fondo
  fill(39,74,54); //parte cuadrada vino al medio
  noStroke();
  beginShape();
  vertex(130+D,190);
  vertex(185+D,190);
  vertex(185+D,270);
  vertex(130+D,270);
  endShape();
  fill(39,74,54); //parte superior tapa del vino
  beginShape();
  vertex(150+D,135);
  vertex(165+D,135);
  vertex(165+D,128);
  vertex(150+D,128);
  endShape();
  fill(39,74,54); //parte grande de la tapa de vidrio
  noStroke();
  beginShape();
  vertex(167+D,128);
  vertex(167+D,116);
  vertex(148+D,116);
  vertex(148+D,128);
  endShape();
  fill(130,121,78); //corcho
  noStroke();
  beginShape();
  vertex(151+D,108);
  vertex(163+D,108);
  vertex(163+D,116);
  vertex(151+D,116);
  endShape();
  fill(171,160,101); //corcho superior
  noStroke();
  ellipse(157+D,108,11,4);
  fill(39,74,54); //parte inclimada de la botella
  noStroke();
  beginShape();
  vertex(184+D,190);
  vertex(130+D,190);
  vertex(147+D,144);
  vertex(149+D,135);
  vertex(165+D,135);
  vertex(167+D,141);
  endShape();
  //coso donde estan las bananas
  fill(138,154,166);
  noStroke();
  beginShape();
  vertex(250+D, 210);
  vertex(250+D, 224);
  vertex(229+D, 241);
  vertex(216+D, 253);
  vertex(221+D, 263);
  vertex(243+D, 267);
  vertex(247+D, 273);
  vertex(163+D, 271);
  vertex(164+D, 266);
  vertex(175+D, 263);
  vertex(185+D, 255);
  vertex(176+D, 241);
  vertex(161+D, 230);
  vertex(149+ D, 217);
  vertex(152+D, 201);
  endShape();
  fill(109,120,130); //parte redonda hueco del coso
  noStroke();
  ellipse(199+D,210,100,40);
  //tapa del cuardeno
  fill(70, 87, 70);
  noStroke();
  beginShape();
  vertex(258+D,273);
  vertex(243+D,314);
  vertex(84+D,287);
  vertex(112+D,270);
  endShape();
  //hoja del cuardeno derecha 
  fill(186,186,186);
  noStroke();
  beginShape();
  curveVertex(167+D, 270);
  curveVertex(167+D, 270);
  curveVertex(161+D, 303);
  curveVertex(186+D, 299);
  curveVertex(215+D, 308);
  curveVertex(234+D, 313);
  curveVertex(254+D, 283);
  curveVertex(231+D, 279);
  curveVertex(190+D, 267);
  curveVertex(174+D, 266);
  curveVertex(167+D, 270);
  curveVertex(167+D, 270);
  endShape(CLOSE);
  //hoja del cuardeno izquierda
  fill(128, 128, 128);
  noStroke();beginShape();
  curveVertex(159+D, 301);
  curveVertex(159+D, 301);
  curveVertex(166+D, 270);
  curveVertex(140+D, 260);
  curveVertex(113+D, 264);
  curveVertex(93+D, 264);
  curveVertex(77+D, 287);
  curveVertex(97+D, 289);
  curveVertex(134+D, 287);
  curveVertex(152+D, 294);
  curveVertex(159+D, 301);
  curveVertex(159+D, 301);
  endShape(CLOSE);  
  
}
void mousePressed() {
  println("X",mouseX, "Y",mouseY);
}
