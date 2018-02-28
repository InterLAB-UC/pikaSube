class Pika {


  float x;
  float y;
  float BSX;
  float BSY;

  int numFrames = 6;
  int numFrames2 = 2;
  int numFrames3 = 3;
  PImage[] idel = new PImage[numFrames];
  PImage[] left = new PImage[numFrames];
  PImage[] right = new PImage[numFrames];
  PImage[] jumpU = new PImage[numFrames3];
  PImage[] jumpD = new PImage[numFrames2];


  Pika(float cordX, float cordY) {
    x=cordX;
    y=cordY;
    BSX=5;
    BSY=5;
    

  }

  void create() {
    for (int i=0; i<idel.length; i++) {
      String imageName="s"+nf(i, 3) + ".png";
      idel[i] = loadImage(imageName);
    }

    for (int o=0; o<left.length; o++) {
      String imageName2="rl"+nf(o, 3)+".png";
      left[o] = loadImage(imageName2);
    }

    for (int p=0; p<right.length; p++) {
      String imageName3="r"+nf(p, 3)+".png";
      right[p] = loadImage(imageName3);
    }

    for (int k=0; k<jumpU.length; k++) {
      String imageName4="j"+nf(k, 3)+".png";
      jumpU[k] = loadImage(imageName4);
    }

    for (int l=0; l<jumpD.length; l++) {
      String imageName5="jd"+nf(l, 3)+".png";
      jumpD[l] = loadImage(imageName5);
    }
  }

  void idel() {
    int frame=frameCount % numFrames;

    imageMode(CENTER);
    image(idel[frame], x, y);
  }

  void left() {
    int frame=frameCount % numFrames;
    imageMode(CENTER);
    if (x<=width) x=x-BSX;
    image(left[frame], x, y);
    
    if (x<=5) x= width;
  }

  void right() {
    int frame=frameCount % numFrames;
    imageMode(CENTER);
    if (x>=5) x=x+BSX;
    image(right[frame], x, y);
    if (x>=width) x= width;
  }

  void JU() {
    int frame=frameCount % numFrames3;
    imageMode(CENTER);
    y -= 5;
    if (y <=height -200) y =height -200;
    image(jumpU[frame], x, y);
  }


  void JD() {
    int frame=frameCount % numFrames2;
    imageMode(CENTER);
    y = height-30;
    image(jumpD[frame], x, y);
  }

  int retX() {
    return int(x);
  }
}//fin