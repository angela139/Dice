Die dice;
int sum = 0;
int ones = 0;
int twos = 0;
int threes = 0;
int fours = 0;
int fives = 0;
int sixs = 0;
class Die {
  
  int size = 100;
  int distance = size/2 - size/5;
  int x = (int)(random(1, 7));
  int w;
  int h;
  
  Die(int myW, int myH) {
    w = myW;
    h = myH;
  }

  void show() {
    // Draw background rectangle
    noLoop();
    stroke(0);
    rectMode(CENTER);
    fill(random(100, 255),random(100, 255), random(100, 255));
    rect(w, h, size, size);
    // One
    if (x == 1) {
      fill(0);
      ellipse(w, h, size/5, size/5);
      sum++;
      ones++;
    }
    // Two
    else if (x == 2) {
      fill(0);
      ellipse(w + distance, h + distance, size/5, size/5);
      ellipse(w - distance, h - distance, size/5, size/5);
      sum += 2;
      twos++;
    }
    // Three
    else if (x == 3) {
      fill(0);
      ellipse(w, h, size/5, size/5);
      ellipse(w + distance, h + distance, size/5, size/5);
      ellipse(w - distance, h - distance, size/5, size/5);
      sum += 3;
      threes++;
    }
    // Four
    else if (x == 4) {
      fill(0);
      ellipse(w + distance, h + distance, size/5, size/5);
      ellipse(w - distance, h - distance, size/5, size/5);
      ellipse(w + distance, h - distance, size/5, size/5);
      ellipse(w - distance, h + distance, size/5, size/5);
      sum += 4;
      fours++;
    }
    // Five
    else if (x == 5) {
      fill(0);
      ellipse(w, h, size/5, size/5);
      ellipse(w + distance, h + distance, size/5, size/5);
      ellipse(w - distance, h - distance, size/5, size/5);
      ellipse(w + distance, h - distance, size/5, size/5);
      ellipse(w - distance, h + distance, size/5, size/5);
      sum += 5;
      fives++;
    }
    // Six
    else {
      fill(0);
      ellipse(w + distance, h + distance, size/5, size/5);
      ellipse(w - distance, h - distance, size/5, size/5);
      ellipse(w + distance, h - distance, size/5, size/5);
      ellipse(w - distance, h + distance, size/5, size/5);
      ellipse(w - distance, h, size/5, size/5);
      ellipse(w + distance, h, size/5, size/5);
      sum += 6;
      sixs++;
    }
  }
  // Roll Dice
  void roll() {
    loop();
    sum = 0;
    ones = 0;
    twos = 0;
    threes = 0;
    fours = 0;
    fives = 0;
    sixs = 0;
    x = (int)(random(1, 7));
  }
  
}


void setup() {
  size(1000, 700);
  background(255);
  smooth();
  frameRate(30);
  for (int j = 0; j < 4; j++) {
    for (int i = 0; i < 6; i++) {
      
    }
  }
}
void draw() {
   background(255);
    for (int j = 0; j < 4; j++) {
      for (int i = 0; i < 6; i++) {
      dice = new Die(200 + 120*i, 100 + 120*j);
      dice.show();
    }
   }
  stroke(0);
  textSize(20);
  textAlign(CENTER);
  // Sum of dice
  text("Sum: " + sum, width/4, height - 30);
  // Counts the number of one, two, three, etc dice
  text("Ones: " + ones, width - 300, height - 160);
  text("Twos: " + twos, width - 300, height - 130);
  text("Threes: " + threes, width - 300, height - 100);
  text("Fours: " + fours, width - 300, height - 70);
  text("Fives: " + fives, width - 300, height - 40);
  text("Sixs: " + sixs, width - 300, height - 10);
}

void mousePressed() {
  for (int j = 0; j < 4; j++) {
      for (int i = 0; i < 6; i++) {
      dice.roll();
    }
   }
}
