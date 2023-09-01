part of 'food_bloc.dart';

abstract class FoodEvent extends Equatable {
  const FoodEvent();

  @override
  List<Object> get props => [];
}

class LoadFoodCounter extends FoodEvent {}

class AddFood extends FoodEvent {
  final Food food;
  
  const AddFood(this.food);

  @override
  List<Object> get props => [food];
}

class RemoveFood extends FoodEvent {
  final Food food;
  
  const RemoveFood(this.food);

  @override
  List<Object> get props => [food];
}