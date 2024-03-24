import 'package:flutter_test/flutter_test.dart';

import 'package:either/src/either.dart';

void main() {
  test('demo', () {
    final Either<String, int> either = Either("xyz", null);
    expect(either.fold((l) => null, (r) => null), "xyz");
  });
}
