<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

The Either class is a powerful tool for handling errors and branching logic in functional programming. It represents a computation that can result in one of two possible outcomes: a success value (Right) or a failure value (Left). This abstraction enables developers to elegantly manage error handling and data flow by encapsulating success and failure scenarios into a single type. With Either, Flutter developers can write more robust and predictable code, improving code readability, maintainability, and resilience in their applications.
<!-- 
## Features

TODO: List what your package can do. Maybe include images, gifs, or videos. -->

## Installation

open pubsbec.yaml file and add this lines under dependencies
```yaml
  either:
    git:
      url: https://github.com/wshehab99/either.git
```


## Usage

<!-- TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. -->

```dart
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
```

<!-- ## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more. -->
