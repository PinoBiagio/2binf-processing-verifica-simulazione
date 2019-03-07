Personaggio ron ;
Edificio castello ;
class Personaggio {
  PShape forma ;
  Personaggio () {
    forma = loadShape("ron.obj");
    forma.setFill(color(#FA0303));
  }
  void disegna(float x, float y ) {
    shape(forma, movimentox, y);
  }
}

class Edificio {
  PShape forma ;
  Edificio () {
   forma = loadShape("castle.obj");
   forma.setFill(color(#F70AF4));
  }
  void disegna(float x, float y){
  shape(forma, x ,y);
}
}
  
  






PShape castle;
float movimentox, movimentoy ;


void movimentoautox() {
  if (movimentox >= width*0.8) {
    movimentox = width*0.8;
  }else{
    movimentox += 4 ;
  
}
}








void setup() {
  fullScreen(P3D);
  loadShape("ron.obj");
  loadShape("castle.obj");
  ron = new Personaggio();
  castello = new Edificio();
}

void draw() {
  background(0, 0, 255);
  lights();
  castello.disegna(width*.9, height*.5);
  ron.disegna(width*.1, height*.5);
  movimentoautox();
}
