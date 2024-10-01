import 'package:flutter_test/flutter_test.dart';
import 'package:test_bloc_feature/core/remote/api/end_points.dart';
import 'package:test_bloc_feature/features/Home/data/mappers/anime_mapper.dart';
import 'package:test_bloc_feature/features/Home/data/models/get_anime_response_model.dart';

import '../../../../core/get_data_from_json_file_function.dart';

void main() {
  group('GetAnimeResponseModel', () {
    test('fromJson should return a valid model from JSON', () {
      // Arrange
      final jsonData = getDataFromJsonFile('get_anime_responses_json', 'Home');
      // Act
      final animeResponseModel = AnimeMapper.mapAnimeResponse(jsonData['data']);
      final result = animeResponseModel.first;

      // Assert
      expect(result.id, '7442');
      expect(result.attributes?.canonicalTitle,
          'Attack on Titan'); // assuming your AttributesModel has a title field
      expect(result.links?.self, '${EndPoints.baseUrl}anime/7442');
    });

    test('fromJson with null fields should return a model with null values',
        () {
      // Act
      final result = GetAnimeResponseModel.fromJson({});

      // Assert
      expect(result.id, isNull);
      expect(result.attributes, isNull);
      expect(result.links, isNull);
      expect(result.relationships, isNull);
    });
  });
}
