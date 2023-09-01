class LuasSegitiga {
  double _setengah = 0.5;
  double? _alas,_tinggi;

  void setAlas(double value){
    if (value <0 ){
      value *= -1;
    }
    _alas = value;
  }

  void setTinggi(double value){
    if (value <0){
      value *= -1;
    }
    _tinggi = value;
  }

  double hitungLuas(){
    return this._setengah * this._alas! * this._tinggi!;
  }
}