import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_bloc/bloc/food_bloc.dart';
import 'package:food_bloc/models/food_model.dart';
import 'dart:math';

final _random = new Random();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FoodBloc()..add(LoadFoodCounter()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Bloc",
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Bloc"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: BlocBuilder<FoodBloc, FoodState>(builder: (context, state) {
          if (state is FoodInitial) {
            return const CircularProgressIndicator(
              color: Colors.orange,
            );
          }
          if (state is FoodLoaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${state.foods.length}',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        for (int index = 0; index < state.foods.length; index++)
                          Positioned(
                            left: _random.nextInt(250).toDouble(),
                            top: _random.nextInt(400).toDouble(),
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: state.foods[index].image,
                            ),
                          )
                      ],
                    ))
              ],
            );
          } else {
            return const Text('Something went wrong!');
          }
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.fastfood_outlined),
              backgroundColor: Colors.orange[800],
              onPressed: () {
                context.read<FoodBloc>().add(AddFood(Food.Foods[0]));
              }),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              backgroundColor: Colors.orange[800],
              onPressed: () {
                context.read<FoodBloc>().add(RemoveFood(Food.Foods[0]));
              }),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.local_pizza_outlined),
              backgroundColor: Colors.orange[800],
              onPressed: () {
                context.read<FoodBloc>().add(AddFood(Food.Foods[1]));
              }),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              backgroundColor: Colors.orange[800],
              onPressed: () {
                context.read<FoodBloc>().add(RemoveFood(Food.Foods[1]));
              }),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.apple_outlined),
              backgroundColor: Colors.orange[800],
              onPressed: () {
                context.read<FoodBloc>().add(AddFood(Food.Foods[2]));
              }),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              backgroundColor: Colors.orange[800],
              onPressed: () {
                context.read<FoodBloc>().add(RemoveFood(Food.Foods[2]));
              }),
        ],
      ),
    );
  }
}
