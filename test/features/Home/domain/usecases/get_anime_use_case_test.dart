import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_bloc_feature/core/remote/api/api_result.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

import '../../mocks/mock_data_for_test.dart';
import '../../mocks/get_anime_mocks.dart';

void main() {
 
  group(" GetAnimeUseCase ", () {
    test('should return GetAnimeResponseEntities', () async {
      // Arrange
      final mockGetAnimeUseCase = MockGetAnimeUseCase();
      when(() => mockGetAnimeUseCase.call())
          .thenAnswer((_) async => const ApiResult.success(MockDataForTest.mockAnimeList));
      // Act
      final result = await mockGetAnimeUseCase.call();
      // Assert
      expect(result, isA<ApiResult<List<GetAnimeResponseEntities>>>());
    });
  });
}
