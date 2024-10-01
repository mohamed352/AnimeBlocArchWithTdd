import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_event.dart';
import 'package:test_bloc_feature/features/Home/presentation/pages/home.dart';
import 'core/injection.dart' as di;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime',
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case Home.routeName:
            return MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => di.sl<HomeBloc>()..add(const HomeEvent()),
                child: const Home(),
              ),
            );
          default:
            return null;
        }
      },
    );
  }
}
