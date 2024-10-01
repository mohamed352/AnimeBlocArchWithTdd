import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

final class MockDataForTest {
  MockDataForTest._();
  // Sample data for testing
  static const mockAnimeList = [
    GetAnimeResponseEntities(
        slug: '1',
        description:
            ' Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It has been serialized in Shueisha\'s shōnen manga magazine Naruto Next. ',
        canonicalTitle: 'Naruto',
        posterImage: 'posterImage',
        coverImage: 'posterImage')
  ];
}
