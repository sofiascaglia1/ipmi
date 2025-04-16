PImage camara;
void setup(){
   size(800,400);
   background(175,173,174);
  camara = loadImage("camaradefotos.jpg");
  
}

void draw(){
background(182,182,182);
  image(camara, 0, 0, 400, 400);
  noStroke();
  fill(121,121,123);
  rect(515,110,40,10,10); //base boton
  stroke(100);
  fill(185,185,192);
  rect(520,105,25,20,10); //boton
  
  stroke(100);
  strokeWeight(1);
  line(524,106,524,115);//detalles boton
  line(526,106,526,115);
  line(527,106,527,115);
  line(529,106,529,115);
  line(530,106,530,115);
  line(532,106,532,115);
  line(533,106,533,115);
  line(535,106,535,115);
  line(536,106,536,115);
  line(538,106,538,115);
  line(539,106,539,115);
  line(541,106,541,115);
  stroke(50);
  strokeWeight(2);
  line(520,114,544,114);//sombra boton
  
 
 noStroke();
  fill(118,117,112);
  triangle(470, 120, 483,115,490,120); //derecha
  triangle(708, 120, 705,115,720,120); //izquierda
  
  fill(150,152,164);
  rect(480,115,230,10,360);//arriba
  stroke(255);
  strokeWeight(1);
  line(488,115,638,115);//luz
 
 
  noStroke();
 fill(162,163,168);
  rect(460,120,270,170,10);//camara base
  fill(124,125,119);
  rect(720,120,10,170,0,10,10,0);//sombra derecha
  fill(118,117,113);
  rect(460,120,10,62,10,0,0,10);//sombra izquierda arriba
  rect(460,235,10,55,10,0,0,10);//sombra izquierda abajo
  stroke(255);
  strokeWeight(1);
  line(503,120,640,120);//luz 
 
 
 stroke(50);
  fill(147,143,132);
  rect(655,120,55,15,5);//flash
  fill(56,52,49);
  rect(705,120,4,15,0,1,30,0);//sombra
  rect(656,121,1,13,1,0,30,30);
  stroke(60);
  line(659,121,659,135);
  stroke(70);
  line(661,121,661,135);
  stroke(80);
  line(664,121,664,135);
  stroke(90);
  line(668,121,668,135);
  stroke(100);
  line(671,121,671,135);
  stroke(110);
  line(675,121,675,135);
  line(688,121,688,135);
  stroke(100);
  line(691,121,691,135);
  stroke(90);
  line(695,121,695,135);
  stroke(80);
  line(698,121,698,135);
  stroke(70);
  line(701,121,701,135);
  stroke(60);
  line(703,121,703,135);
  strokeWeight(2);
  line(658,121,703,121);
  stroke(230);
  line(678,136,706,136);//detalles flash
  
  
  stroke(30);
  strokeWeight(1);
  fill(143,96,50);
  rect(685,254,23,23,5);//marca
  
  
  fill(70,61,52);
  ellipse(699,153,13,13);//luz roja
  
  
  stroke(50);
   fill(104,99,96);
  rect(460,180,110,60,5);//rectangulo gris 
 
 
  fill(84,82,83);
  rect(470,190,100,40,5);//rectangulo gris oscuro
  
  
  stroke(52,45,39);
  strokeWeight(1);
  fill(130,126,115);
  ellipse(620,210,155,153);//lente base
  noStroke();
  fill(224,221,232);
  arc(619, 208, 150, 150, radians(220), radians(300));//luz
  stroke(50);
  fill(89,78,74);
  arc(619, 212, 150, 150, radians(80), radians(150));//sombra
  
  
 stroke(30,25,22);
 strokeWeight(2);
  fill(146,141,148);
  ellipse(620,210,125,125);//lente 2
  
  
  stroke(0);
  strokeWeight(1);
  fill(172,169,180);
  ellipse(620,210,105,105);//lente 3
  
  
  fill(62,58,59);
  ellipse(620,210,85,85);//lente 4 oscuro
  
  
  fill(62,58,59);
  rect(586,180,67,60,10);//rect lente
 
  stroke(38);
  strokeWeight(2);
  line(587,195,594,189);
  line(594,188,652,206);//primer linea
 
  stroke(45);
  strokeWeight(1);
  line(586,198,596,195);
 line(596,195,639,221);
  line(639,221,652,218);//segunda linea
  
  stroke(50);
  line(586,212,640,229);
  line(640,229,652,223);//tercer linea
}
