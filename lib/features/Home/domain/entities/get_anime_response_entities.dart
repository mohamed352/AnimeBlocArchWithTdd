import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_anime_response_entities.freezed.dart';

@Freezed()
class GetAnimeResponseEntities with _$GetAnimeResponseEntities {
  const factory GetAnimeResponseEntities({
    required final String? slug,
    required final String? description,
    required final String? canonicalTitle,
    required final String? posterImage,
    required final String? coverImage,
  }) = _GetAnimeResponseEntities;
}
