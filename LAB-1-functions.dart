void main() {
  // var func = add(4, 4);
  // print(func);
  checkPrime(5);
}

// add(a, b) {
//   return a + b;
// }

checkPrime(num) {
  var count = 0;
  for (int i = 1; i < num + 1; i++) {
    if (num % i == 0) {
      count += 1;
    }
  }

  if (count > 2 || num <= 1) {
    print('Not a prime');
  } else {
    print('Prime');
  }
}
