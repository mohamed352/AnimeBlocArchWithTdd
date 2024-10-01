import 'package:json_annotation/json_annotation.dart';
import 'package:test_bloc_feature/features/Home/data/models/attributes_response_model.dart';
import 'package:test_bloc_feature/features/Home/data/models/relationships_response_model.dart';

part 'get_anime_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetAnimeResponseModel {
  final String? id;
  final AttributesModel? attributes;
  final LinksModel? links;
  final RelationshipsModel? relationships;

  GetAnimeResponseModel({
    required this.id,
    required this.attributes,
    required this.links,
    required this.relationships,
  });

  factory GetAnimeResponseModel.fromJson(Map<String, dynamic> json) {
    
    return _$GetAnimeResponseModelFromJson(json);
  }
}
