import 'package:json_annotation/json_annotation.dart';

part 'relationships_response_model.g.dart';

@JsonSerializable(createToJson: false)
class RelationshipsModel {
  final LinksModel? categories;
  final LinksModel? genres;
  final LinksModel? castings;
  final LinksModel? creators;
  final LinksModel? characters;
  final LinksModel? episodes;
  final LinksModel? locations;
  final LinksModel? mappings;
  final LinksModel? reviews;
  final LinksModel? staff;
  final LinksModel? studios;
  final LinksModel? themes;
  final LinksModel? trailer;
  RelationshipsModel({
    this.categories,
    this.characters,
    this.episodes,
    this.locations,
    this.mappings,
    this.reviews,
    this.staff,
    this.creators,
    this.genres,
    this.castings,
    this.studios,
    this.themes,
    this.trailer,
  });

  factory RelationshipsModel.fromJson(Map<String, dynamic> json) {
    return _$RelationshipsModelFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class LinksModel {
  final String? self;
  final String? related;
  factory LinksModel.fromJson(Map<String, dynamic> json) {
    return _$LinksModelFromJson(json);
  }

  LinksModel({this.self, this.related});
}
