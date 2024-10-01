import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_bloc_feature/core/remote/api/api_result.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_event.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_state.dart';

import '../../mocks/mock_data_for_test.dart';
import '../../mocks/get_anime_mocks.dart';

void main() {
  late HomeBloc homeBloc;
  late MockGetAnimeUseCase mockGetAnimeUseCase;

  setUp(() {
    mockGetAnimeUseCase = MockGetAnimeUseCase();
    homeBloc = HomeBloc(mockGetAnimeUseCase);
  });
   tearDown(() {
    homeBloc.close();
  });

  group('HomeBloc', () {
    test('initial state is HomeState.initial()', () {
      expect(homeBloc.state, const HomeState.initial());
    });

    blocTest<HomeBloc, HomeState>(
      'emits [loading, loaded] when GetAnimeUseCase returns success',
      build: () {
        when(() => mockGetAnimeUseCase.call()).thenAnswer((_) async =>
            const ApiResult.success(MockDataForTest.mockAnimeList));
        return homeBloc;
      },
      act: (bloc) => bloc.add(const HomeEvent()),
      expect: () => [
        const HomeState.loading(),
        const HomeState.loaded(
            getAnimeResponseEntities: MockDataForTest.mockAnimeList),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [loading, error] when GetAnimeUseCase returns failure',
      build: () {
        when(() => mockGetAnimeUseCase.call()).thenAnswer(
            (_) async => ApiResult.failure(Exception('Error message')));
        return homeBloc;
      },
      act: (bloc) => bloc.add(const HomeEvent()),
      expect: () => [
        const HomeState.loading(),
        const HomeState.error(message: 'Exception: Error message'),
      ],
    );
  });
}
