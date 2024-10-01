import 'package:test_bloc_feature/core/remote/api/api_consumer.dart';
import 'package:test_bloc_feature/core/remote/api/end_points.dart';
import 'package:test_bloc_feature/features/Home/data/models/get_anime_response_model.dart';
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

    final animeResponseModel = List<GetAnimeResponseModel>.from(
      (response['data'] as List).map(
        (e) {
          return GetAnimeResponseModel.fromJson(e as Map<String, dynamic>);
        },
      ),
    );

    return _mapper(animeResponseModel);
  }
}

List<GetAnimeResponseEntities> _mapper(List<GetAnimeResponseModel> list) {
  return list
      .map((model) => GetAnimeResponseEntities(
            canonicalTitle: model.attributes?.canonicalTitle,
            coverImage: model.attributes?.coverImage?.original,
            description: model.attributes?.description,
            posterImage: model.attributes?.posterImage?.original,
            slug: model.attributes?.slug,
          ))
      .toList();
}
