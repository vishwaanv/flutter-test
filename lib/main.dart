// main.dart
import 'package:connou_test/buisnes_logic/handler/counter.dart';
import 'package:connou_test/data/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterHandler(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterHandler counterCubit =
        BlocProvider.of<CounterHandler>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Connou UG Flutter Challage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterHandler, Counter>(
              builder: (context, state) {
                Color? color;
                if (state.isPositive) {
                  color = Colors.green;
                }
                return Text(
                  'Count: ${state.count}',
                  style: TextStyle(
                    fontSize: 24,
                    color: color,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => counterCubit.increment(),
                  child: const Text('Increment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
