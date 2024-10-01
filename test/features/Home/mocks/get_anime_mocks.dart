import 'package:mocktail/mocktail.dart';
import 'package:test_bloc_feature/features/Home/domain/usecases/get_anime_use_case.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_state.dart';

class MockGetAnimeUseCase extends Mock implements GetAnimeUseCase {}
class MockHomeBloc extends Mock implements HomeBloc {}

class FakeHomeState extends Fake implements HomeState {}