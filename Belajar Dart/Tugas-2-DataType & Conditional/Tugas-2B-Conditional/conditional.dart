import 'dart:io';

// //SOAL1
// void main(){
//   stdout.writeln("anda akan menginstall aplikasi dart");
//   var choice = stdin.readLineSync();
//   choice = choice?.toLowerCase();
//   if (choice == "y"){
//     print("Anda akan menginstall aplikasi dart");
//   } else if(choice == "t"){
//     print("Aborted");
//   } else {
//     print("harap masukan y/t");
//   };
// }


//SOAL 2
// void main() {
//   stdout.writeln("Masukan Nama:");
//   var nama = stdin.readLineSync();
//   nama = nama?.toLowerCase();
//   stdout.writeln("Masukan Peran");
//   var peran = stdin.readLineSync();
//   peran = peran?.toLowerCase();

//   if (nama == "") {
//     print("Nama harus diisi!");
//   } else if (peran == "") {
//     print("Halo $nama Pilih Peranmu untuk memulai game");
//   } else if (peran != "") {
//     if (peran == "penyihir") {
//       print(
//           "Hallo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
//     } else if (peran == "guard") {
//       print(
//           "Hallo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf");
//     } else if (peran == "warewolf") {
//       print("Hallo Warewolf $nama, Kamu akan memakan mangsa setiap malam!");
//     } else {
//       print("pilih salah satu dari 3 peran berikut :");
//       print("1. Penyihir");
//       print("2. Guard");
//       print("3. Warewolf");
//     }
//   }
//   ;
// }


// //SOAL3
// void main(){
//   stdout.writeln("Masukan Hari");
//   var hari = stdin.readLineSync();
//   hari = hari?.toLowerCase();
//   switch(hari){
//     case "senin" : {print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja."); break;}
//     case "selasa" : {print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati."); break;} 
//     case "rabu" : {print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri."); break;}
//     case "kamis" : {print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain."); break;}
//     case "jumat" : {print("Hidup tak selamanya tentang pacar."); break;}  
//     case "sabtu" : {print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan."); break;}
//     case "minggu" : {print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani."); break;}
//     default : {print("Masukan hari untuk mendapatkan pencerahan"); break;}
//   }
// }


// SOAL 4
// void main() {
//   const tanggal = 21;
//   const bulan = 1;
//   const tahun = 1945;

//   var teks_bulan;

//   switch (true) {
//     case (tanggal < 1 || tanggal > 31):
//       {
//         print("Input tanggal salah");
//         break;
//       }
//     case (bulan < 1 || bulan > 12):
//       {
//         print("Input bulan salah");
//         break;
//       }
//     case (tahun < 1900 || tahun > 2200):
//       {
//         print("Input tahun salah");
//         break;
//       }
//     default:
//       {
//         switch (true) {
//           case (bulan == 1):
//             teks_bulan = "Januari";
//             break;
//           case (bulan == 2):
//             teks_bulan = "Februari";
//             break;
//           case (bulan == 3):
//             teks_bulan = "Maret";
//             break;
//           case (bulan == 4):
//             teks_bulan = "April";
//             break;
//           case (bulan == 5):
//             teks_bulan = "Mei";
//             break;
//           case (bulan == 6):
//             teks_bulan = "Juni";
//             break;
//           case (bulan == 7):
//             teks_bulan = "Juli";
//             break;
//           case (bulan == 8):
//             teks_bulan = "Agustus";
//             break;
//           case (bulan == 9):
//             teks_bulan = "September";
//             break;
//           case (bulan == 10):
//             teks_bulan = "Oktober";
//             break;
//           case (bulan == 11):
//             teks_bulan = "November";
//             break;
//           case (bulan == 12):
//             teks_bulan = "Desember";
//             break;
//           default:
//             break;
//         }
//         print("${tanggal} ${teks_bulan} ${tahun}");
//       }
//   }
// }
