// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributesModel _$AttributesModelFromJson(Map<String, dynamic> json) =>
    AttributesModel(
      canonicalTitle: json['canonicalTitle'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      slug: json['slug'] as String?,
      posterImage: json['posterImage'] == null
          ? null
          : ImageAttributes.fromJson(
              json['posterImage'] as Map<String, dynamic>),
      coverImage: json['coverImage'] == null
          ? null
          : ImageAttributes.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      synopsis: json['synopsis'] as String?,
      description: json['description'] as String?,
      coverImageTopOffset: (json['coverImageTopOffset'] as num?)?.toInt(),
      titles: json['titles'] == null
          ? null
          : TitlesModel.fromJson(json['titles'] as Map<String, dynamic>),
      abbreviatedTitles: (json['abbreviatedTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      averageRating: json['averageRating'] as String?,
      ratingFrequencies: json['ratingFrequencies'] == null
          ? null
          : RatingFrequenciesModel.fromJson(
              json['ratingFrequencies'] as Map<String, dynamic>),
      userCount: (json['userCount'] as num?)?.toInt(),
      favoritesCount: (json['favoritesCount'] as num?)?.toInt(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      nextRelease: json['nextRelease'] as String?,
      popularityRank: (json['popularityRank'] as num?)?.toInt(),
      ratingRank: (json['ratingRank'] as num?)?.toInt(),
      ageRating: json['ageRating'] as String?,
    );

ImageAttributes _$ImageAttributesFromJson(Map<String, dynamic> json) =>
    ImageAttributes(
      tiny: json['tiny'] as String?,
      large: json['large'] as String?,
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      original: json['original'] as String?,
    );

TitlesModel _$TitlesModelFromJson(Map<String, dynamic> json) => TitlesModel(
      en: json['en'] as String?,
      ja: json['ja_jp'] as String?,
    );
