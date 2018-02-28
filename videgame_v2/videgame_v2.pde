import de.looksgood.ani.*;

AniSequence seq;

Pika p;
Bkgrnd b;
int bkChg = 0;
void setup() {
  size(1080, 720);
  frameRate(30);
   Ani.init(this);
  seq = new AniSequence(this);
  p=new Pika(width,height-50);
  b = new Bkgrnd();
  p.create();
  b.load();
}

void draw() {

  b.display(bkChg);
  println(p.retX());
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