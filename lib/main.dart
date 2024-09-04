import 'package:bloc_cubit_flutter_training/cubit/player_cubit.dart';
import 'package:bloc_cubit_flutter_training/view/search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: BlocProvider<PlayerCubit>(
          create: (context) => PlayerCubit(),
          child: SearchList(),
        ));
  }
}
