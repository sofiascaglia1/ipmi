/* enlace del video: https://www.youtube.com/watch?v=MWStdqufRq0

funcionamiento: barra espaciadora para iniciar/pausar animacion
mientras mas aumente mouseX y mouseY mas aumenta la velocidad en la que aumentan las figuras
tecla c para cambiar el color del background y las figuras
tecla r para reiniciar
*/

PImage referencia;
int cantidad;
int tam;

color colorFondo; 
color colorFiguras;

float animador= 0;
boolean animar= false;

void setup(){
size (800,400);

  referencia= loadImage("F_28.jpg");
  cantidad= 40;
  tam= width/cantidad;
  colorFondo= color(255);
  colorFiguras= color(0);
}

void draw(){
  background(colorFondo);
  image (referencia, 0,0,400,400);

if (animar) {
    float velocidad = calcularVelocidad(mouseX + mouseY);
    animador += velocidad;
  }

push();
translate(400,0);
for (int x=0; x<cantidad; x++){
     for(int y=0; y<cantidad; y++){
      boolean esCirculo = (x + y) % 2 == 0;
      float escala = 1;
      if (animar) {
        escala = 1+ sin(radians(x*10 + animador*50)) * 0.5;
      }
      float nuevoTam = tam * escala;

      dibujarFiguras(x * tam, y * tam, nuevoTam, esCirculo);
    }
  }  
    pop();
}

void dibujarFiguras(float x, float y, float tam, boolean esCirculo){
 fill(colorFiguras);
 noStroke();
 if (esCirculo) {
    ellipse(x + tam /2, y + tam /2, tam, tam);
  } else {
    rect(x, y, tam, tam);
  }
}

float calcularVelocidad(float posicion) {
  float v = map(posicion, 400, width + height, 0.01, 0.5);

  if (v < 0.01) {
    v = 0.01;
  } else if (v > 0.5) {
    v = 0.5;
  }
  return v;
}

void keyPressed(){
if(key== 'c'||key=='C'){
    colorFondo = color(random(255), random(255), random(255));
    colorFiguras = color(random(255), random(255), random(255));
}
if (key == 'r' || key == 'R') {
    cantidad = 40;
    tam= width/ cantidad;
    colorFondo = color(255);
    colorFiguras = color(0);
    animador = 0;
    animar = false;
}
if (key == ' ') {
    animar = !animar;
  }
}
