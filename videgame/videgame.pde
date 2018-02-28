Pika p;
bkgrnd b;

void setup() {
  size(500, 500);
  frameRate(10);
  p=new Pika(height-30, width-25);
  p.create();

}

void draw() {
b.display();
  
  if (key==CODED) {
    if (keyCode == LEFT) {
      p.left();
      p.moveX();
    }
    if (keyCode == RIGHT) {
      p.right();
      p.moveX2();
    }
    //if (keyCode == UP) {
    //  p.JU();
     
    //}
    //  if (keyCode == DOWN) {
    //    p.JD();
        
      } else {
        p.idel();
      }
    }
  