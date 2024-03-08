double divideNumbers(double dividend, double divisor) {
  // Check if the divisor is zero
  if (divisor == 0) {
    // Throw a DivisionByZeroError if the divisor is zero
    throw UnsupportedError('Cannot divide by zero');
  }

  // Perform the division and return the result
  return dividend / divisor;
}

void main() {
  double a = 10;
  double b = 0;

  try {
    // Call the divideNumbers function and attempt division
    double result = divideNumbers(a, b);
    print('Result of division: $result');
  } catch (e) {
    // Handle DivisionByZeroError if it occurs
    print('Error: ${e.toString()}');
  }
}
