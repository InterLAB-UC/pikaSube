class Enemy {

  float x;
  float y;

  float BSX;
  float BSY;

  int numFrames = 4;
  PImage[] fly = new PImage[numFrames];

  Enemy() {
    x=0;
    y=random(height);

    BSX=20;
    BSY=20;
  }

  void show() {
    for (int i=0; i<fly.length; i++) {
      String imageName="E"+nf(i, 3) + ".png";
      fly[i] = loadImage(imageName);
    }
  }

  void atack() {
    int frame=frameCount % numFrames;
    imageMode(CENTER);
    if (x<=width) x=x+BSX;
    image(fly[frame], x, y);

    if (x>=width) {
      x=0;
      y=random(height-50);
    }
  }
  float enemyX () {
    return x;
  }
  float enemyY () {
    return y;
  }
}//fin