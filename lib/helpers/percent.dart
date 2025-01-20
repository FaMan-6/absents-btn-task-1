double percentFormatter(int r, int t) {
  final number = (r / t).clamp(0, 1);
  return number.toDouble();
}
