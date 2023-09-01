import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/food_model.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial()) {
    on<LoadFoodCounter>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(const FoodLoaded(foods: <Food>[]));
    });
    on<AddFood>(
      (event, emit) {
        if (state is FoodLoaded){
          final state = this.state as FoodLoaded;
          emit(
            FoodLoaded(
              foods: List.from(state.foods)..add(event.food),
            ),
          );
        }
    });
    on<RemoveFood>(
      (event, emit) {
        if (state is FoodLoaded){
          final state = this.state as FoodLoaded;
          emit(
            FoodLoaded(
              foods: List.from(state.foods)..remove(event.food),
            ),
          );
        }
    });
  }
}
