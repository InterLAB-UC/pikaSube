class Pika {
  float x;
  float y;
  float BSX;
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
  }

  void create() {
    for (int i=0; i<idel.length; i++) {
      String imageName="s"+nf(i, 3) + ".png";
      idel[i] = loadImage(imageName);

      for (int o=0; o<left.length; o++) {
        String imageName2="rl"+nf(i, 3)+".png";
        left[i] = loadImage(imageName2);

        for (int p=0; p<right.length; p++) {
          String imageName3="r"+nf(i, 3)+".png";
          right[i] = loadImage(imageName3);

          //for (int k=0; k<jumpU.length; k++) {
          //  String imageName4="j"+nf(i, 3)+".png";
          //  jumpU[i] = loadImage(imageName4);

            //for (int l=0; l<jumpD.length; l++) {
            //  String imageName5="jd"+nf(i, 2)+".png";
            //  jumpD[i] = loadImage(imageName5);
            //}
          }
        }
      }
    }
  

  void moveX() {
    x=x-BSX;
  }

  void moveX2() {
    x=x+BSX;
  }

  void idel() {
    int frame=frameCount % numFrames;
    imageMode(CENTER);
    image(idel[frame], x, y);
  }

  void left() {
    int frame=frameCount % numFrames;
    imageMode(CENTER);
    image(left[frame], x, y);
  }

  void right() {
    int frame=frameCount % numFrames;
    imageMode(CENTER);
    image(right[frame], x, y);
  }
  
  
  //void JU() {
  //  int frame=frameCount % numFrames;
  //  imageMode(CENTER);
  //  image(jumpU[frame], x, y);
  //}
    
    
  //void JD() {
  //  int frame=frameCount % numFrames;
  //  imageMode(CENTER);
  //  image(jumpD[frame], x, y);
  //}
}//fin