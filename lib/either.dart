library either;

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
