import 'package:either/src/either.dart';
// Function to perform division

Either<String, double> divide(int dividend, int divisor) {
  if (divisor == 0) {
    return Left('Cannot divide by zero');
  } else {
    return Right(dividend / divisor);
  }
}

void main() {
  // Attempt to divide 10 by 2
  Either<String, double> result1 = divide(10, 2);
  result1.fold(
    (error) => print('Error: $error'),
    (value) => print('Result: $value'),
  );

  // Attempt to divide 10 by 0
  Either<String, double> result2 = divide(10, 0);
  result2.fold(
    (error) => print('Error: $error'),
    (value) => print('Result: $value'),
  );
}
