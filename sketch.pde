void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  noStroke();

  fill(0, 255, 0);
  rect(0, 0, 100, 50);
  fill(0);
  textSize(20);
  text(mouseX, 10, 30);
  text(",", 42, 30);
  text(mouseY, 50, 30); // mouseX and mouseY display/box

  int remainderX = 0;
  int remainderY = 0;

  if (mousePressed == true) { //code for detecting/filling boxes
    int boxX = mouseX;
    int boxY = mouseY;
    remainderX = mouseX % 50;
    System.out.println("RemainderX = " + remainderX);
    remainderY = mouseY % 50;
    System.out.println("Remainder Y = " + remainderY);
    if (remainderX > 35) {
      while (boxX % 50 != 0)
        boxX++;
      System.out.println("BoxX is " + boxX);
    } else {
      while (boxX % 50 != 0)
        boxX--;
      System.out.println("BoxX is " + boxX);
    }

    if (remainderY > 35) {
      while (boxY % 50 != 0)
        boxY++;
      System.out.println("BoxY is " + boxY);
    } else {
      while (boxY % 50 != 0)
        boxY--;
      System.out.println("BoxY is " + boxY);
    }

    fill(255, 0, 0);
    rect(boxX, boxY, 50, 50);
  }
}

void keyPressed() { //rebuild board when mouse clicked
  if (key == CODED) {
    if (keyCode == UP) {

      background(255);
      fill(0);

      for (int a = 0; a < 500; a +=100) {
        for (int i = 0; i < 500; i+=100) {
          rect(i, a, 50, 50);
        }
      }
      for (int a = 50; a < 500; a +=100) {
        for (int i = 50; i < 500; i+=100) {
          rect(i, a, 50, 50);
        }
      }
    }
  }
}
