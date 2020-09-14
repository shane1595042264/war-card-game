HashMap<Integer, String> dp1 = new HashMap<Integer, String >();
HashMap<Integer, String> dp2 = new HashMap<Integer, String >();
//dp1 = discard pile 1, dp2 = discard pile 2
String C1 = null;
String C2 = null;
int pts1 = 0;
int pts2 = 0;
String result = "Not yet";
String disp1 = "points 0";
String disp2 = "points 0";
PImage ci1;
PImage ci2;
void combat() {
  //i1 & i2 represent index 1 & index 2

  int c1 = 0;
  int c2 = 0;


  while (true) {
    int p1s = p1.size();
    

    int i1 = int(random(52));
    //C1 represents the card name
    C1 = p1.remove(i1);
    if (p1s == 0){
      break;
    }
    else if (C1 == null) {
      continue;
    } else {
      //c1 represents card 1 value
      c1 = i1 % 13;

      ci1 = loadImage(C1 + ".png");
      break;
    }
  }
  while (true) {
    int i2 = int(random(52));
    C2 = p2.remove(i2);
    int p2s = p2.size();
    if(p2s==0){
      break;
    }
    if (C2 == null) {
      continue;
    } else {
      c2 = i2 % 13;

      ci2 = loadImage(C2 + ".png");
      break;
    }
  }

  if (p1 == null && dp1 == null) {
    result = "PLAYER 2 Out!";
  } else if (p2 == null && dp2 == null) {
    result = "PLAYER 1 OUT!";
  } else if (c1 > c2) {//player 1 wins
    pts1++;
    //dp1 means display points of player 1
    disp1 =  "points" + " " + pts1;
    dp1.put(c1, C1);
    dp1.put(c2, C2);
    result = "PLAYER 1 wins!";
  } else if (c1 < c2) {//player 2 wins
    pts2++;
    disp2 = "points" + " " + pts2;
    dp2.put(c1, C1);
    dp2.put(c2, C2);
    result = "PLAYER 2 wins!";
  } else {
    p1.put(c1, C1);
    p2.put(c2, C2);
    result = "draw";
  }
}




/*for (HashMap.Entry<Integer, String> Entry : md.entrySet()) {
 int key1 = Entry.getKey();
 if ( p1.size() > 25) {
 break;
 } else if ( md.get(key1) != null) {
 p1.put(key1, md.get(key1));
 }
 }
 for (HashMap.Entry<Integer, String> entry : p1.entrySet()) {
 int key2 = entry.getKey();
 md.remove(key2);
 p2.putAll(md);
 }
 for (HashMap.Entry<Integer, String> me : p2.entrySet()) {
 int key3 = me.getKey();
 md.remove(key3);
 }
 for (HashMap.Entry d : p1.entrySet()) {
 print("" + d.getKey() + d.getValue() + ",");
 }*/
