import 'dart:math';

class Algorithm {
  void tempMethod() {
    var rng = new Random();
    List outcome = new List(3);
    int count = 0;
//   for(int y = 0; y < 50; y++) {
    while (true) {
      for (int i = 0; i <= 2; i++) {
        String symbol = '';
        int num = rng.nextInt(49);
        if (num < 12) {
          // 12
          symbol = 'lemon';
        } else if (num < 23) {
          // 11
          symbol = 'orange';
        } else if (num < 32) {
          // 9
          symbol = 'apple';
        } else if (num < 39) {
          // 7
          symbol = 'pear';
        } else if (num < 44) {
          // 5
          symbol = 'grapes';
        } else if (num < 47) {
          // 3
          symbol = 'bell';
        } else {
          // 2
          symbol = 'cherry';
        }
        outcome[i] = symbol;
      }
      count++;
      if (outcome[0] == outcome[1] &&
          outcome[0] == outcome[2] &&
          outcome[0] == 'cherry') {
        break;
      }
    }
    print(count);
  }
}
