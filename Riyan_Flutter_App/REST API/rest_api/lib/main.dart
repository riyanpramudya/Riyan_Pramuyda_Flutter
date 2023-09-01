import 'package:flutter/material.dart';
import 'package:rest_api/Get_data/get_data_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: GetDataScreen(),
    );
  }
}
