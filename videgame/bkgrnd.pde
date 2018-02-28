class bkgrnd {
  int numFrames = 6;
  PImage[] bkg = new PImage[numFrames];

  void display() {
    for (int i=0; i<bkg.length; i++) {
      String imageName="BG"+nf(i, 3) + ".png";
      bkg[i] = loadImage(imageName);
      imageMode(CENTER);
      image(bkg[i],0,0,bkg[i].width,bkg[i].height);
    }
  }
}//fin