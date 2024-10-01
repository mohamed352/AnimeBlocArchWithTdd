import 'package:test_bloc_feature/core/remote/api/api_result.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

abstract class HomeRepositories {
  Future<ApiResult<List<GetAnimeResponseEntities>>> getAnime();
}