import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Food extends Equatable{
  final String id;
  final String name;
  final Image image;

  const Food({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [id,name,image];

  static List<Food> Foods = [
    Food(
      id: "1", 
      name: "fastfood", 
      image: Image.asset('images/fastfood.png')
    ),
    Food(
      id: "2", 
      name: "pizza", 
      image: Image.asset('images/pizza.png')
    ),
    Food(
      id: "3", 
      name: "salad", 
      image: Image.asset('images/salad.png')
    ),
  ];
}