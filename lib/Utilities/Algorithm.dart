import 'dart:math';

class Algorithm {
  void tempMethod() {
    var rng = new Random();
    List outcome = new List.filled(3, 0);
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
    print(outcome);
  }
}
