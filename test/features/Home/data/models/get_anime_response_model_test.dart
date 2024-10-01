import 'package:flutter_test/flutter_test.dart';
import 'package:test_bloc_feature/features/Home/data/models/get_anime_response_model.dart';

import '../../mocks/mock_data_for_test.dart';

void main() {
  group('GetAnimeResponseModel', () {
    test('fromJson should return a valid model from JSON', () {
      // Arrange

      // Act
      final result = GetAnimeResponseModel.fromJson(MockDataForTest.jsonMock);

      // Assert
      expect(result.id, '123');
      expect(result.attributes?.canonicalTitle,
          'Attack on Titan'); // assuming your AttributesModel has a title field
      expect(result.links?.self, 'https://example.com/anime/123');
    });

    test('fromJson with null fields should return a model with null values',
        () {
      // Act
      final result = GetAnimeResponseModel.fromJson(
          MockDataForTest.jsonMockWithNullFields);

      // Assert
      expect(result.id, isNull);
      expect(result.attributes, isNull);
      expect(result.links, isNull);
      expect(result.relationships, isNull);
    });
  });
}
