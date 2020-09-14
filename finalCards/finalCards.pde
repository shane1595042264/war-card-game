void setup() {
  size(1600, 800);
  draw();

  mainDeck();
}

void display() {

  //nd means num of cards in mainDeck
  int nc = md.size();

  PImage bi;
  //for maindeck
  bi = loadImage("back.png");
  int x = 50; 
  int y = 50;
  for (int i = 0; i < nc; i++) {
    image(bi, x, y+5*i, 100, 140);
  }
  //for player 1

  for (int i = 0; i < dp1.size(); i++) {
    image(bi, 1200 + 5*i, 600, 100, 140);
  }
  for (int i = 0; i < dp2.size(); i++) {
    image(bi, 1200 + 5*i, 100, 100, 140);
  }



  /*for (int i = 0; i < fnc; i++) {
   image(bi, 800-20*i, 600, 100, 140);
   }
   //for player 2
   for (int i = 0; i < snc; i++) {
   
   image(bi, 200+20*i, 100, 100, 140);
   }*/

  //fnc means player1's number of cards
  int fnc = p1.size();
  //snc means second player's num of cards
  int snc = p2.size();


  PImage ci;
  PImage di;
int p =0;
int o = 0;
  for (int d1 = 1; d1<53; d1++) {
    
    String Ci = p1.get(d1);

    if (fnc == 0 ) {
      break;
    } else if (Ci == null ) {
      continue;
    } else {
      ci = loadImage(Ci+".png");

      image(ci, 350+20*p, 600, 100, 140);

      p++;
    }
  }
  for (int d1 = 1; d1<53; d1++) {
    

    String Di = p2.get(d1);
    if (snc == 0 ) {
      break;
    } else if (Di == null ) {
      continue;
    } else {

      di = loadImage(Di + ".png");

      image(di, 350+20*o, 100, 100, 140);
      o++;
    }
  }




  textSize(32);
  fill(0, 0, 255);

  text("Shuffle", 50, 600);
  text("PLAYER 1", 500, 770);
  text("PLAYER 2", 500, 30);
  text(disp1, 300, 770);
  text(disp2, 700, 30);
  text("Combat", 50, 700);
  text(result, 1300, 300);
  text("replenish", 50, 500);
}


//define mouse value
int mv = 0;
int comb = 0;
int rep = 0;
void draw() {
  background(0, 144, 0);
  fill(mv);
  rect(50, 600, 100, 50);// for shuffle button
  fill(comb);
  rect(50, 700, 100, 50);// for combat button
  fill(rep);
  rect(50, 500, 100, 50);// for replenish button

  display();
  while (true) {
    if (ci1 == null) {
      text("no card", 500, 400);
      break;
    } else {
      image(ci1, 400, 400, 100, 140);
      break;
    }
  }
  while (true) {
    if (ci2 == null) {
      text("no card", 500, 300);
      break;
    } else {
      image(ci2, 600, 300, 100, 140);
      break;
    }
  }
}

void mousePressed() {
  //shuffle
  if (mouseX>50 && mouseX < 150 && mouseY > 600 && mouseY < 650) {
    mv = 255;
    shuffle();
  }
  if (mouseX>50 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
    comb = 255;
    combat();
  }
  if (mouseX>50 && mouseX < 150 && mouseY > 500 && mouseY < 550) {
    rep = 255;
    replenish();
  }
}

void mouseReleased() {
  if (mouseX>50 && mouseX < 150 && mouseY > 600 && mouseY < 650) {
    mv = 0;
  }
  if (mouseX>50 && mouseX < 150 && mouseY > 700 && mouseY < 750) {
    comb = 0;
  }
  if (mouseX>50 && mouseX < 150 && mouseY > 500 && mouseY < 550) {
    rep = 0;
  }
}
