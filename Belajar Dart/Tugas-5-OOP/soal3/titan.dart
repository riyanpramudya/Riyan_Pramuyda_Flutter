class Titan {
  int? _powerPoint;

  int get powerPoint => _powerPoint!;
  void set powerPoint(int value) {
    if (value < 5) {
      value = 5;
    }
    _powerPoint = value;
  }
}
