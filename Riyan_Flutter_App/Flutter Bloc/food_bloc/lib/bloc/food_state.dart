part of 'food_bloc.dart';

abstract class FoodState extends Equatable {
  const FoodState();
  
  @override
  List<Object> get props => [];
}

class FoodInitial extends FoodState {}

class FoodLoaded extends FoodState{
  final List<Food> foods;

  const FoodLoaded({required this.foods}); 
  
  @override
  List<Object> get props => [foods];
}
