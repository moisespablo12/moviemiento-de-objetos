
class Spot {
  int diam=50;    //declaracion del cuerpo  
  int diame=100;

  float diameter;  //declaracion del caparazon

  float x, y;
  // cordenada de X, cordenada de Y

  float speed;
  // velocidad de movimiento por cuadro

  int direction = 1;
  // direccion en la que va (+1 para arriba y -1 para abajo

  Spot(float xpos, float ypos, float dia, float sp) {

    // complemento

    x = xpos;

    y = ypos;

    diameter = dia;

    speed = sp;
  }

  void move() {

    //rebote del caparazon del caracol

    x += (speed * direction);

    if ((x > (width - diame / 2)) || (x < diam / 2)) {

      direction *= -1;
    }
  }

  void display() {

    rect(x, y, diame, diam);
    ellipse(x, y, diameter, diameter);
  }
}

Spot sp1, sp2, sp3; // declaracion de objetos

void setup() {

  size(500, 500);

  smooth();  //suavisar bordes

  noStroke(); // no mostrar borde

  sp1 = new Spot(50, 350, 100, 2); // caracol 1

  sp2 = new Spot(50, 400, 100, 1.5); //caracol 2

  sp3 = new Spot(50, 450, 100, 1); // Caracol 3
}

void draw() {

  fill(0, 15);  // borrar rastro

  // de donde a donde no mostrar rastro

  rect(0, 0, width, height);
  fill(255);

  //luna
  fill(255);
  ellipse(400, 50, 70, 70);
  fill(214, 214, 214);
  ellipse(400, 40, 25, 25);
  fill(214, 214, 214);
  ellipse(385, 60, 20, 20);
  fill(214, 214, 214);
  ellipse(415, 70, 20, 20);

  //estrellas
  fill(255);
  ellipse(150, 50, 5, 5);
  ellipse(50, 30, 5, 5);
  ellipse(325, 25, 5, 5);
  ellipse(300, 100, 5, 5);
  ellipse(100, 100, 5, 5);
  ellipse(200, 170, 5, 5);
  ellipse(400, 200, 5, 5);
  ellipse(250, 60, 5, 5);
  
  //grama:
  fill(35,183,58);
  rect(0,400,500,300);
  
  sp1.move();

  sp2.move();

  sp3.move();

  fill(255, 0, 1);      //color a motrar del caracol 1
  sp1.display();     

  fill(255);          //color a motrar del caracol 2
  sp2.display();

  fill(40, 29, 219);   //color a motrar del caracol 3
  sp3.display();
}
