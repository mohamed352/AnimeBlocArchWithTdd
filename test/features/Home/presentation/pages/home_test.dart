import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_bloc.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_state.dart';
import 'package:test_bloc_feature/features/Home/presentation/pages/home.dart';
import 'package:test_bloc_feature/features/Home/presentation/widgets/anime_grid_item.dart';

import '../../mocks/get_anime_mocks.dart';
import '../../mocks/mock_data_for_test.dart';

void main() {
  late MockHomeBloc mockHomeBloc;

  setUpAll(() {
    registerFallbackValue(FakeHomeState());
  });

  setUp(() {
    mockHomeBloc = MockHomeBloc();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<HomeBloc>.value(
        value: mockHomeBloc,
        child: const Home(),
      ),
    );
  }

  group('Home Screen Widget Tests', () {
    testWidgets('shows CircularProgressIndicator when state is loading',
        (WidgetTester tester) async {
      // Arrange: Mock the bloc to emit loading state
      when(() => mockHomeBloc.stream)
          .thenAnswer((_) => Stream.value(const HomeState.loading()));
      when(() => mockHomeBloc.state).thenReturn(const HomeState.loading());

      // Act: Pump the widget
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert: Verify that CircularProgressIndicator is shown
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('shows AnimeGridItem when state is loaded',
        (WidgetTester tester) async {
      when(() => mockHomeBloc.stream).thenAnswer((_) => Stream.value(
          const HomeState.loaded(
              getAnimeResponseEntities: MockDataForTest.mockAnimeList)));
      when(() => mockHomeBloc.state).thenReturn(const HomeState.loaded(
          getAnimeResponseEntities: MockDataForTest.mockAnimeList));

      // Act: Pump the widget
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert: Verify that AnimeGridItem is shown
      expect(find.byType(AnimeGridItem), findsOneWidget);
    });

    testWidgets('shows error message when state is error',
        (WidgetTester tester) async {
      // Arrange: Mock the bloc to emit error state
      const errorMessage = 'Error occurred';
      when(() => mockHomeBloc.stream).thenAnswer(
          (_) => Stream.value(const HomeState.error(message: errorMessage)));
      when(() => mockHomeBloc.state)
          .thenReturn(const HomeState.error(message: errorMessage));

      // Act: Pump the widget
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert: Verify that the error message is displayed
      expect(find.text(errorMessage), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
    });

    testWidgets('does not show anything when state is initial',
        (WidgetTester tester) async {
      // Arrange: Mock the bloc to emit initial state
      when(() => mockHomeBloc.stream)
          .thenAnswer((_) => Stream.value(const HomeState.initial()));
      when(() => mockHomeBloc.state).thenReturn(const HomeState.initial());

      // Act: Pump the widget
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert: Verify that nothing is shown (returns SizedBox.shrink())
      expect(find.byType(SizedBox), findsOneWidget);
    });
  });
}
