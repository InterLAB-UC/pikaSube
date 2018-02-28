PImage[] bkg = new PImage [6];
int bkChg = 0;
int x ;
int y;
void setup() {
  size(500, 500);
  for (int i=0; i<bkg.length; i++) {
    String imageName="BG"+nf(i, 3) + ".png";
    bkg[i] = loadImage(imageName);
  }
  x = width;
  y = height -50;
}

void draw() {
  image(bkg[bkChg], 0, 0, width, height);
  x-= 1;
  ellipse(x, y, 30, 30);
  if (x<=0) {
    x = width;
    bkChg ++;
  }
  if (bkChg==bkg.length) {
    bkChg = 0;
  }
}

void keyPressed() {
  bkChg ++;
}