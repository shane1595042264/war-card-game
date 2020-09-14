//md stands for main deck
HashMap<Integer, String> md = new HashMap<Integer, String >();
HashMap<Integer, String> p1 = new HashMap<Integer, String>();
HashMap<Integer, String> p2 = new HashMap<Integer, String>();

String[] cardSuit = {"", "C", "D", "H", "S"};
void mainDeck() {
  int z = 1;
  for (int i = 1; i< 5; i++) {
    for (int k = 1; k < 14; k++) { 
      String card = cardSuit[i] + k;
      md.put(z, card);
      z++;
    }
  }
}

//shuffle mainDeck into player1 and player 2's decks.

void replenish() {
  p1.putAll(dp1);
  int dp1s = dp1.size();
  int dp2s = dp2.size();
  for (int d1 = 1; d1<53; d1++) {
    
    String Ci = dp1.get(d1);

    if (dp1s == 0 ) {
      break;
    } else if (Ci == null ) {
      continue;
    } else {
      dp1.remove(d1);
    }
  }
  p2.putAll(dp2);
  for (int d1 = 1; d1<53; d1++) {
    
    String Ci = dp2.get(d1);

    if (dp2s == 0 ) {
      break;
    } else if (Ci == null ) {
      continue;
    } else {
      dp2.remove(d1);
    }
  }
}

void shuffle() {

  String deck1 = "";
  String deck2 = "";

  int a = 0;
  while (true) {
    if (a == 26) {
      break;
    }
    int i0 = int(random(md.size()));
    String v1 = md.remove(i0);
    if (v1 == null) {
      continue;
    } else {
      p1.put(i0, v1);

      a++;
    }
  }
  p2.putAll(md);
  for (HashMap.Entry<Integer, String> me : p2.entrySet()) {
    int key3 = me.getKey();
    md.remove(key3);
  }
  print("deck1: \n");
  for (HashMap.Entry d : p1.entrySet()) {
    deck1 = ( d.getKey() + "" + d.getValue() + ",");
    print(deck1);
  }
  print("\ndeck2: \n");
  for (HashMap.Entry t : p2.entrySet()) {
    deck2 = (t.getKey() + "" + t.getValue() + ",");
    print(deck2);
  }
 
}
