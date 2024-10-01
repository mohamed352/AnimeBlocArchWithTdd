import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_state.dart';
import 'package:test_bloc_feature/features/Home/presentation/widgets/anime_grid_item.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
         
          return state.map(
              initial: (_) => const SizedBox.shrink(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (loadedState) {
                return AnimeGridItem(
                    animeList: loadedState.getAnimeResponseEntities);
              },
              error: (errorState) => Center(
                    child: Text(
                      errorState.message,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ));
        },
      ),
    );
  }
}
