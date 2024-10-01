import 'package:test_bloc_feature/core/remote/api/api_consumer.dart';
import 'package:test_bloc_feature/core/remote/api/end_points.dart';
import 'package:test_bloc_feature/features/Home/data/mappers/anime_mapper.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

abstract class HomeDatasources {
  Future<List<GetAnimeResponseEntities>> getAnime();
}

class HomeDatasourcesImpl implements HomeDatasources {
  final ApiConsumer _apiConsumer;

  HomeDatasourcesImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;
  @override
  Future<List<GetAnimeResponseEntities>> getAnime() async {
    final response = await _apiConsumer.get(EndPoints.anime);
    return AnimeMapper.mapAnimeEntities(response['data']);
  }
}
