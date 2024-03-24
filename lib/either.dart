library;

class Either<L, R> {
  final L? left;
  final R? right;
  Either.left(this.left) : right = null;
  Either.right(this.right) : left = null;
  T fold<T>(T Function(L) l, T Function(R) r) {
    if (left != null) {
      return l(left as L);
    } else {
      return r(right as R);
    }
  }
}

// ignore: non_constant_identifier_names
Either Left(l) => Either.left(l);
Either left(l) => Either.left(l);

// ignore: non_constant_identifier_names
Either Right(r) => Either.right(r);
Either right(r) => Either.right(r);
