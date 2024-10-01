// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationships_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelationshipsModel _$RelationshipsModelFromJson(Map<String, dynamic> json) =>
    RelationshipsModel(
      categories: json['categories'] == null
          ? null
          : LinksModel.fromJson(json['categories'] as Map<String, dynamic>),
      characters: json['characters'] == null
          ? null
          : LinksModel.fromJson(json['characters'] as Map<String, dynamic>),
      episodes: json['episodes'] == null
          ? null
          : LinksModel.fromJson(json['episodes'] as Map<String, dynamic>),
      locations: json['locations'] == null
          ? null
          : LinksModel.fromJson(json['locations'] as Map<String, dynamic>),
      mappings: json['mappings'] == null
          ? null
          : LinksModel.fromJson(json['mappings'] as Map<String, dynamic>),
      reviews: json['reviews'] == null
          ? null
          : LinksModel.fromJson(json['reviews'] as Map<String, dynamic>),
      staff: json['staff'] == null
          ? null
          : LinksModel.fromJson(json['staff'] as Map<String, dynamic>),
      creators: json['creators'] == null
          ? null
          : LinksModel.fromJson(json['creators'] as Map<String, dynamic>),
      genres: json['genres'] == null
          ? null
          : LinksModel.fromJson(json['genres'] as Map<String, dynamic>),
      castings: json['castings'] == null
          ? null
          : LinksModel.fromJson(json['castings'] as Map<String, dynamic>),
      studios: json['studios'] == null
          ? null
          : LinksModel.fromJson(json['studios'] as Map<String, dynamic>),
      themes: json['themes'] == null
          ? null
          : LinksModel.fromJson(json['themes'] as Map<String, dynamic>),
      trailer: json['trailer'] == null
          ? null
          : LinksModel.fromJson(json['trailer'] as Map<String, dynamic>),
    );

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) => LinksModel(
      self: json['self'] as String?,
      related: json['related'] as String?,
    );
