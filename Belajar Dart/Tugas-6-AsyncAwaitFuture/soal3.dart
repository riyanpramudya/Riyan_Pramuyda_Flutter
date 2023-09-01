import 'dart:async';

void main(List<String> args) async {
  print("ready to sing...");
  print(await line1());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line1() async {
  String lirik = "pernahkan kau merasa,";
  return await Future.delayed(Duration(seconds: 5), () => lirik);
}

Future<String> line2() async {
  String lirik = "pernahkah kau merasa ........... ";
  return await Future.delayed(Duration(seconds: 3), () => lirik);
}

Future<String> line3() async {
  String lirik = "pernahkah kau merasa,";
  return await Future.delayed(Duration(seconds: 2), () => lirik);
}

Future<String> line4() async {
  String lirik =
      "hatimu hampa pernahkah kau merasa hati mu kosong ............";
  return await Future.delayed(Duration(seconds: 1), () => lirik);
}
