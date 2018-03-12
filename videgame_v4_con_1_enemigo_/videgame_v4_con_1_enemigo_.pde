//import de.looksgood.ani.*;
//import de.looksgood.ani.easing.*;




Pika p;
Bkgrnd b;
Enemy e = new Enemy();
int bkChg = 0;
float distX, distY;
void setup() {
  size(1080, 720);
  frameRate(30);

  p=new Pika(width, height-50, this);
  b = new Bkgrnd();
  p.create();
  b.load();
  e.show();
}

void draw() {

  b.display(bkChg);
  e.atack();
  distX = dist(e.enemyX(), e.enemyY(), p.pikaX(), p.pikaY());
  if (distX < 3) {
    noLoop();
  }

  //println(e.enemyX()+":"+ e.enemyY(),p.pikaX()+":"+ p.pikaY());
  println(distX);

  if (p.retX()<=10) {

    bkChg ++;
  }
  if (bkChg==6) {
    bkChg = 0;
  }

  if (keyPressed) {
    if (keyCode == LEFT) {
      p.left();
    } else if (keyCode == RIGHT) {
      p.right();
    } else if (keyCode == UP) {
      p.JU();
    }
    /*
    else if (keyCode == UP) {
     llamar primer frame animación
     while(keyCode == UP){
     p.JU(); unicamente frames de los globos
     }
     }
     */
    else if (keyCode == DOWN) {
      p.JD();
    }
  } else {
    p.idel();
  }
}