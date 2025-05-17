//imagenes
PImage inicio;
PImage fondo1;
PImage logo;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage belatrix;
PImage vacpack;
PImage corral;
PImage jardin;
PImage largos;
PImage fotoSlimes;

//estado
String estado;

//texto
String intro;
String info1;
String info2;
String info3;
String info4;
String click;

//slimes
String slimes;
String info3b;

//movimiento
int movimiento1;
int movimiento2;
int movimiento3;
int movimientoV;
int movimientoJ;
int movimientoC;
int movimientoL;
int movimientoY;
int movInfoSlimes;
float movP4;
float movFinal;
float tamTexto;
float fondoTexto;
float alpha;

void setup() { 
size(640,480); 
 background(251,104,133);
//imagenes
inicio = loadImage("inicio.jpg");
fondo1 = loadImage("fondo1.jpg");
logo = loadImage("logo.png");
fondo2=loadImage("fondo2.jpg");
fondo3= loadImage("fondo3.jpg");
fondo4= loadImage("fondo4.jpg");
belatrix= loadImage("belatrix.png");
vacpack= loadImage("vacpack.png");
corral= loadImage("corral.png");
jardin= loadImage("jardin.png");
largos= loadImage("largos.png");
fotoSlimes= loadImage("slimes.png");

//estados
estado="pantalla1";

//movimiento y transparencia
movimiento1 =height;
movimiento2=width;
movimiento3=-600;
movimientoV=530;
movimientoJ=580;
movimientoC=630;
movimientoL=680;
movimientoY=-100;
movP4=height;
movInfoSlimes=480;
movFinal=-640;
tamTexto= 100;
fondoTexto= tamTexto*5;
alpha=0;

//textos
intro= "Slime Rancher es un videojuego de simulación y aventura\n en primera persona, donde criás criaturas adorables llamadas slimes.\n Explora un planeta alienígena, mejorá tu rancho y descubre\n secretos escondidos en un mundo colorido y vibrante.";
info1= "En Slime Rancher sos Beatrix LeBeau, una joven que deja la Tierra para comenzar una nueva vida como ranchera de slimes en el planeta Lejano Lejano. Tu objetivo es recolectar slimes, cuidarlos, alimentarlos y vender sus cristales (llamados plorts ) para ganar dinero y mejorar tu base.";
info2= "Tu principal herramienta es la Vacpack, una mochila que succiona y lanza \n objetos. Con ella recolectás slimes, alimentos y recursos. Debés construir \n corrales, cultivar comida y mantener a tus slimes contentos. \n Si combinás dos tipos, creás Largos, que producen más plorts.";
info3= "Hay una gran variedad de slimes, cada uno con su propia personalidad y comportamiento. Algunos ejemplos son:";
info3b="También podés encontrar slimes raros, dorados y hasta radiactivos.";
info4= "El mundo de Slime Rancher es amplio y lleno de secretos.\n Podrás visitar zonas como el Dry Reef, el Moss Blanket o el Glass Desert,\n cada una con slimes únicos y desafíos.\n Algunos lugares están bloqueados al principio y deberás avanzar para desbloquearlos. \nTambién podrás encontrar mensajes antiguos que revelan partes de la historia.";
slimes= "Pink Slime: el más común, come de todo. \n\nRock Slime: rueda con fuerza y puede dañar. \n\nPhosphor Slime: sólo aparece de noche. \n\nBoom Slime: explota al azar.";
click= "Si deseás volver a verlo, hacé click en el botón para reiniciar la presentación.";

}

void draw() {
 //pantalla 1
if (estado == "pantalla1") {
  if (frameCount<=60*11){
 //imagen y boton pantalla1
  image(inicio, 0, 0,640,480);
  image(logo,55,0,530,200);
   noStroke();
  fill(35,166,208, alpha); // fondo blanco con transparencia
 float fondoTexto= tamTexto*5;
  rect(0, 230, 640, fondoTexto);
fill(255,alpha);
fill(0);
 textSize(20);
 fill(255,alpha);
  
  if (tamTexto>20){
    tamTexto-=0.9;
  }
  if (alpha< 255) {
      alpha+= 3;
  }
  textAlign(LEFT);
  textSize(tamTexto);
text(intro,0,250);
//pantalla 2
} else {
  estado= "pantalla2";
  }
} else if(estado=="pantalla2"){
  if(frameCount<=60*22) {
    if (movimiento1 > 0) {
 movimiento1--;
}
image(fondo1, 0, 0, width, height);
  fill(61,195,194);
rect(0, movimiento1, 640, 105);
fill(255);
textSize(20);
text(info1, 0, movimiento1+8, 640, 100);
if (movimiento3 <0) {
 movimiento3++;
}
 image(belatrix,movimiento3,110,350,330);

} else {
  estado= "pantalla3";
 }
}else if (estado == "pantalla3") {
  if (frameCount <= 60*36){
    if (movimiento2 >= 0) {
 movimiento2-=3;
}
    image(fondo2,0,0,width,height);
    fill(141,98,63);
    rect(movimiento2, 0, 642, 105);
    fill(255);
    text(info2, movimiento2, 15, 640,100);
    if (movimientoV > 180) {
 movimientoV--;
}
    image(vacpack,10,movimientoV,100,100);
    if (movimientoJ > 180) {
 movimientoJ--;
}
  image(jardin,360,movimientoJ,100,100);
 if (movimientoC > 320) {
 movimientoC--;
}
image(corral,180,movimientoC,100,100);
if (movimientoL > 280) {
 movimientoL--;
}
  image(largos,520,movimientoL,120,150);
  
  }else {
    estado= "pantalla4";
  }
}else if (estado== "pantalla4"){
  if (frameCount<=60*47){
    if(movimientoY<=10){
      movimientoY+=0.5;
    }
    if(movP4>0){
      movP4--;
    }
  image(fondo3,0,0,width,height);
  fill(240,98,63);
  rect(0, movimientoY, 640, 45);
   rect(95,145+movP4,450,160);
   rect(40,390+movP4,580,40);
  fill(255);
  text(info3, 0, movimientoY, 640,100);
  text(slimes,135,150+movP4,640,400);
  text(info3b,50,400+movP4,640,100);
  image(fotoSlimes,75,150+movP4,80,150);
  
} else {
    estado= "pantallaFinal";
  }
} else if (estado == "pantallaFinal") {
  if(movFinal<25){
    movFinal+=2;
  }
  image(fondo4,0,0,width,height);
  noStroke();
  fill(150,249,241);
  rect(movFinal-5,110,605,170);
  fill(90, 170, 160);
  text(info4, movFinal+1,120, 600,400);
  text(info4, movFinal-1,120, 600,400);
  text(info4, movFinal,120+1, 600,400);
  text(info4, movFinal,120-1, 600,400);
  fill(255);
  text(info4, movFinal,120, 600,400);
  text(click,movFinal-20,400,640,100);
  
 fill(0);
 stroke(90, 170, 160);
 fill(255);
 rect(movFinal+244,327,100,25,50);
 fill(0);
  text("Reiniciar",movFinal+255,347);
}

println(frameCount);
  println( mouseX + " / " + mouseY );
 
}

void mousePressed() {
 if ( mouseX > 270 && mouseX < 270+100 && mouseY > 327 && mouseY < 327+25)
  if (estado =="pantallaFinal") {
 tamTexto= 100;
 estado= "pantalla1";
 alpha=0;
 frameCount =0;
 movimiento1 =height;
movimiento2=width;
movimiento3=-600;
movimientoV=530;
movimientoJ=580;
movimientoC=630;
movimientoL=680;
movimientoY=-100;
movP4=height;
movInfoSlimes=480;
movFinal=-640;
fondoTexto= tamTexto*5;
alpha=0;
 }
}
  
  
  
  
  
  
