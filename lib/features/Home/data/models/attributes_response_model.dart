import 'package:json_annotation/json_annotation.dart';
import 'package:test_bloc_feature/features/Home/data/models/rating_frequencies_response_model.dart';

part 'attributes_response_model.g.dart';

@JsonSerializable(createToJson: false)
class AttributesModel {
  final String? canonicalTitle;

  final String? createdAt;

  final String? updatedAt;

  final String? slug;

  final String? synopsis;

  final String? description;

  final int? coverImageTopOffset;

  @JsonKey(name: 'titles')
  TitlesModel? titles;

  final List<String>? abbreviatedTitles;

  final String? averageRating;

  @JsonKey(name: 'ratingFrequencies')
  RatingFrequenciesModel? ratingFrequencies;

  final int? userCount;

  final int? favoritesCount;

  final String? startDate;

  final String? endDate;

  final String? nextRelease;

  final int? popularityRank;

  final int? ratingRank;

  final String? ageRating;

  @JsonKey(name: 'posterImage')
  final ImageAttributes? posterImage;
  @JsonKey(name: 'coverImage')
  final ImageAttributes? coverImage;

  AttributesModel(
      {this.canonicalTitle,
      this.createdAt,
      this.updatedAt,
      this.slug,
      required this.posterImage,
      required this.coverImage,
      this.synopsis,
      this.description,
      this.coverImageTopOffset,
      this.titles,
      this.abbreviatedTitles,
      this.averageRating,
      this.ratingFrequencies,
      this.userCount,
      this.favoritesCount,
      this.startDate,
      this.endDate,
      this.nextRelease,
      this.popularityRank,
      this.ratingRank,
      this.ageRating});
  factory AttributesModel.fromJson(Map<String, dynamic> json) {
   
    return _$AttributesModelFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class ImageAttributes {
  final String? tiny;

  final String? large;

  final String? small;

  final String? medium;

  final String? original;

  ImageAttributes({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
  });

  factory ImageAttributes.fromJson(Map<String, dynamic> json) {
   
    return _$ImageAttributesFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class TitlesModel {
  final String? en;
  @JsonKey(name: 'ja_jp')
  final String? ja;

  TitlesModel({this.en, this.ja});
  factory TitlesModel.fromJson(Map<String, dynamic> json) {
    
    return _$TitlesModelFromJson(json);
  }
}
