import 'package:test_bloc_feature/core/remote/api/api_result.dart';
import 'package:test_bloc_feature/features/Home/data/datasources/home_datasources.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';
import 'package:test_bloc_feature/features/Home/domain/repositories/home_repositories.dart';

class HomeRepositoriesImpl implements HomeRepositories {
  final HomeDatasources _homeDatasources;

  HomeRepositoriesImpl({required HomeDatasources homeDatasources})
      : _homeDatasources = homeDatasources;
  @override
  Future<ApiResult<List<GetAnimeResponseEntities>>> getAnime() async {
    try {
      final response = await _homeDatasources.getAnime();

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
