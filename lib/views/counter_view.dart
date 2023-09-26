import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sql_file/logic/cubit/counter_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abdullah Abed'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton.icon(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increaseCounter();
              },
              icon: const Icon(Icons.add),
              label: const Text("increase",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    BlocProvider.of<CounterCubit>(context).number.toString(),
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.w800),
                  ));
            },
          ),
          ElevatedButton.icon(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).decreaseCounter();
              },
              icon: const Icon(Icons.remove),
              label: const Text("decrease",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        ]),
      ),
    );
  }
}
