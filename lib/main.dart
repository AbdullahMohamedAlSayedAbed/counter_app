import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sql_file/logic/cubit/counter_cubit.dart';
import 'package:sql_file/views/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter counter',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const HomeView(),
      ),
    );
  }
}

