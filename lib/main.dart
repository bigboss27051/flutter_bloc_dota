import 'package:bloc_poc/bloc/dota_bloc/dota_bloc.dart';
import 'package:bloc_poc/services/dota_service/dota_service_impl.dart';
import 'package:bloc_poc/ui/home_screen.dart';
import 'package:bloc_poc/ui/proplayer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DotaBloc(dotaServices: DotaServiceImpl()),
      child: MaterialApp(
        title: 'Flutter Bloc Dota 2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: Map<String, WidgetBuilder>.from({
          '/': (_) => const HomeScreen(),
          '/proplayer-screen': (_) => const ProplayerScreen(),
        }),
      ),
    );
  }
}
