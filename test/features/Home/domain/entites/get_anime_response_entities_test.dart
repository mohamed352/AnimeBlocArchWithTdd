import 'package:flutter_test/flutter_test.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

import '../../mocks/mock_data_for_test.dart';

void main() {
  group("GetAnimeResponseEntities", () {
    test("should return GetAnimeResponseEntities", () {
      // Arrange

      // Act
      final result = MockDataForTest.mockAnimeList.first;
      // Assert
      expect(result, isA<GetAnimeResponseEntities>());
    });
  });
}
