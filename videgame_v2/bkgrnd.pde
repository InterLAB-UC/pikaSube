class Bkgrnd {
  int numFrames = 6;
  PImage[] bkg = new PImage[numFrames];
  int bkCount;
  
  Bkgrnd() {
    bkCount = 0;
  }

  void load() {
    for (int i=0; i<bkg.length; i++) {
      String imageName="BG"+nf(i, 3) + ".png";
      bkg[i] = loadImage(imageName);
      
      //image(bkg[0], 0, 0, w, h);
    }
  }
  void display(int c) {
    imageMode(CORNER);
    image(bkg[c],0,0,width,height);
  }
}//fin