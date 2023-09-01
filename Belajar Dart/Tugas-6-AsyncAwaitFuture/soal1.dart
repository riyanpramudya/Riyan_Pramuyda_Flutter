//Synchronous
// void main(List<String> args){
//   var h = Human();
//   print("Luffy");
//   print("zoro");
//   print("killer");

//   h.getdata();
//   print(h.name);
// }

// class Human{
//   String name = "nama character one piece";

//   void getdata(){
//     name = "hilmy";
//     print("get data [done]");
//   }
// }


//---------------------Merubahnya Menjadi Async----------------------

//Asynchronous
// import 'dart:async';
// Future<void> main() async{
//   var char = Human();
//   print(char.name);
//   print("Luffy");
//   print("zoro");
//   print("killer");
//   await char.getdata();
//   print(char.name);
//   print("Berhasil");

// }

// class Human {
//   String name = "nama character one piece";

//   Future<void> getdata()async{
//     await Future.delayed(Duration(seconds: 3));
//     name = "Riyan";
//     print("get data [Done]");
//   }
// }