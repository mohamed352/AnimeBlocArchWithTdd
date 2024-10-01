import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_bloc_feature/core/remote/api/api_consumer.dart';
import 'package:test_bloc_feature/core/remote/api/dio_consumer.dart';
import 'package:test_bloc_feature/features/Home/data/datasources/home_datasources.dart';
import 'package:test_bloc_feature/features/Home/data/repositories/home_repositories_impl.dart';
import 'package:test_bloc_feature/features/Home/domain/repositories/home_repositories.dart';
import 'package:test_bloc_feature/features/Home/domain/usecases/get_anime_use_case.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Home
  //? Repositories
  sl.registerLazySingleton<HomeRepositories>(
    () => HomeRepositoriesImpl(
      homeDatasources: sl(),
    ),
  );
  //? Data Sources
  sl.registerLazySingleton<HomeDatasources>(
    () => HomeDatasourcesImpl(
      apiConsumer: sl(),
    ),
  );
  //?   Use cases
  sl.registerLazySingleton<GetAnimeUseCase>(
    () => GetAnimeUseCase(
      homeRepositories: sl(),
    ),
  );
  //? Bloc
  sl.registerLazySingleton<HomeBloc>(
    () => HomeBloc(sl()),
  );
  //!! Api
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: Dio()));

  //! Register all the dependencies
  await sl.allReady();
}
