import 'package:absents_btn/cubit/baseline/baseline_cubit.dart';
import 'package:absents_btn/cubit/user/user_cubit.dart';
import 'package:absents_btn/cubit/voa_realisasi/voa_realisasi_cubit.dart';
import 'package:absents_btn/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => VoaRealisasiCubit()),
        BlocProvider(create: (_) => BaselineCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Dashboard(),
      ),
    );
  }
}
