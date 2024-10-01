import 'package:test_bloc_feature/core/remote/api/api_result.dart';
import 'package:test_bloc_feature/core/use_case.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';
import 'package:test_bloc_feature/features/Home/domain/repositories/home_repositories.dart';

class GetAnimeUseCase
    extends NoParamsUseCase<ApiResult<List<GetAnimeResponseEntities>>> {
  final HomeRepositories _homeRepositories;

  GetAnimeUseCase({required HomeRepositories homeRepositories})
      : _homeRepositories = homeRepositories;

  @override
  Future<ApiResult<List<GetAnimeResponseEntities>>> call() {
    return _homeRepositories.getAnime();
  }
}
