// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_anime_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAnimeResponseModel _$GetAnimeResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAnimeResponseModel(
      id: json['id'] as String?,
      attributes: json['attributes'] == null
          ? null
          : AttributesModel.fromJson(
              json['attributes'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : RelationshipsModel.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );
