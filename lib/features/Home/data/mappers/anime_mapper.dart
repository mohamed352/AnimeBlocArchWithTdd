import 'package:test_bloc_feature/features/Home/data/models/get_anime_response_model.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

class AnimeMapper {
  AnimeMapper._();
  /// Maps a list of dynamic objects to a list of [GetAnimeResponseModel] objects
  ///
  /// The objects in the list are expected to be JSON objects as returned by the
  /// API.
  ///
  /// [responseData] is the list of objects to be mapped.
  static List<GetAnimeResponseModel> mapAnimeResponse(
      List<dynamic> responseData) {
    return List<GetAnimeResponseModel>.from(
      responseData.map(
        (e) => GetAnimeResponseModel.fromJson(e as Map<String, dynamic>),
      ),
    );
  }

  /// Maps a list of dynamic objects to a list of [GetAnimeResponseEntities] objects
  ///
  /// The objects in the list are expected to be JSON objects as returned by the
  /// API.
  ///
  /// [responseData] is the list of objects to be mapped.
  ///
  /// This function first maps the [responseData] to a list of [GetAnimeResponseModel] objects.
  /// Then it maps each [GetAnimeResponseModel] object to a [GetAnimeResponseEntities] object.
  ///
  /// The [GetAnimeResponseEntities] object is created using the [canonicalTitle],
  /// [coverImage], [description], [posterImage] and [slug] properties of the
  /// [GetAnimeResponseModel].
  static List<GetAnimeResponseEntities> mapAnimeEntities(
      List<dynamic> responseData) {
    /// First map the [responseData] to a list of [GetAnimeResponseModel] objects
    final animeResponseModel = mapAnimeResponse(responseData);

    /// Then map each [GetAnimeResponseModel] object to a [GetAnimeResponseEntities] object
    return animeResponseModel
        .map((model) => GetAnimeResponseEntities(
              /// The canonical title of the anime
              canonicalTitle: model.attributes?.canonicalTitle,
              /// The cover image URL of the anime
              coverImage: model.attributes?.coverImage?.original,
              /// The description of the anime
              description: model.attributes?.description,
              /// The poster image URL of the anime
              posterImage: model.attributes?.posterImage?.original,
              /// The slug of the anime
              slug: model.attributes?.slug,
            ))
        .toList();
  }

  


}
