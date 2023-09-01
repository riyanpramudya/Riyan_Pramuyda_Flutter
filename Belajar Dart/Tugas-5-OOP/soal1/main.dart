import 'LuasSegitiga.dart';

void main(){
  LuasSegitiga segitiga = new LuasSegitiga();
  segitiga.setAlas(20.0);
  segitiga.setTinggi(30.0);

  var luasSegitiga = segitiga.hitungLuas();
  print(luasSegitiga);
}