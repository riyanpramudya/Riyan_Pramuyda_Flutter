//SOAL 1
// void main() {
//   teriak();
// }

// teriak() {
//   print("Hallo Sanbers!");
// }

//SOAL 2
// void main(){
//   int num1 = 12;
//   int num2 = 4;
//   print(kalikan(num1,num2));
// }

// kalikan(int a, int b){
//   return(a*b);
// }

//SOAL 3
// void main() {
//   var name = "Riyan";
//   var age = 23;
//   var address = "Purwokerto";
//   var hobby = "Belajar";

//   var perkenalan = introduce(name, age, address, hobby);
//   print(perkenalan);
// }

// introduce(name, age, address, hobby) {
//   return ("Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!");
// }


//SOAL 4
// void main(){
//  print(faktorial(6));
// }

// faktorial(int num){
//   int sum = 1;
//   if (num <=0){
//     return 1;
//   } else {
//     for(int x = num; x > 0 ; x--){
//       print(x);
//       sum = sum*x;
//     }
//     return sum;
//   }
// }

var comph = [1,2,3,4];
var newCom = [for(var a in comph) "new ${a}"];

void main(){

  List<int> myList = [];

  List<int> list = [1,2,3];

  myList.add(1);

  myList.addAll(list);

  myList.forEach((bilangan)=>{

    print(bilangan)

});
 print(newCom);
}