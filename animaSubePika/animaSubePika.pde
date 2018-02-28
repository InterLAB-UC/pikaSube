import de.looksgood.ani.*;

AniSequence seq;

PImage[] bkg = new PImage [6];
int bkChg = 0;
int x ;
int y;
void setup() {
  size(1080, 720);

  Ani.init(this);
  seq = new AniSequence(this);
  

  for (int i=0; i<bkg.length; i++) {
    String imageName="BG"+nf(i, 3) + ".png";
    bkg[i] = loadImage(imageName);
  }
  x = width;
  y = height -50;
  
  subePika();
}

void draw() {
  image(bkg[bkChg], 0, 0, width, height);
  x-= 5;
  ellipse(x, y, 30, 30);
  if (x<=0) {
    x = width;
    bkChg ++;
  }
  if (bkChg==bkg.length) {
    bkChg = 0;
  }
  //subePika();
}

void keyPressed() {
  if (keyCode == UP) {
    seq.start();
  }
}

void subePika() {
  seq.beginSequence();
  seq.add(Ani.to(this, 1, "y", height/2));
  seq.add(Ani.to(this, 3, "y", height-50));
  seq.endSequence();
}