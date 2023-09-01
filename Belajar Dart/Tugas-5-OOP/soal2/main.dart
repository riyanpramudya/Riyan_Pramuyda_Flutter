import 'lingkaran.dart';

void main(List <String> args){
  Lingkaran lingkaran = new Lingkaran();

  lingkaran.diameter = -15.0;

  double luas_lingkaran = lingkaran.hitungLuas();
  print(luas_lingkaran);
}