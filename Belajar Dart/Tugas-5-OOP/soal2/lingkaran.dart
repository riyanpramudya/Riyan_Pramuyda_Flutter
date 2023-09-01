class Lingkaran {
  double? _r;
  final _pi = 3.14;

  void set diameter(double value){
    if (value < 0){
      value *= -1;
    }
    _r = value;
  }

  double get diameter => _r!;

  double hitungLuas() => this._pi * this._r! * this._r!;
}