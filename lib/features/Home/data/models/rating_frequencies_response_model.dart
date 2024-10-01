import 'package:json_annotation/json_annotation.dart';

part 'rating_frequencies_response_model.g.dart';

@JsonSerializable(createToJson: false)
class RatingFrequenciesModel {
  @JsonKey(name: '2')
  final String? two;

  @JsonKey(name: '3')
  final String? three;

  @JsonKey(name: '4')
  final String? four;

  @JsonKey(name: '5')
  final String? five;

  @JsonKey(name: '6')
  final String? six;

  @JsonKey(name: '7')
  final String? seven;

  @JsonKey(name: '8')
  final String? eight;

  @JsonKey(name: '9')
  final String? nine;

  @JsonKey(name: '10')
  final String? ten;

  @JsonKey(name: '11')
  final String? eleven;

  @JsonKey(name: '12')
  final String? twelve;

  @JsonKey(name: '13')
  final String? thirteen;

  @JsonKey(name: '14')
  final String? fourteen;

  @JsonKey(name: '15')
  final String? fifteen;

  @JsonKey(name: '16')
  final String? sixteen;
  @JsonKey(name: '17')
  final String? seventeen;
  @JsonKey(name: '18')
  final String? eighteen;
  @JsonKey(name: '19')
  final String? nineteen;
  @JsonKey(name: '20')
  final String? twenty;

  RatingFrequenciesModel({
    this.two,
    this.three,
    this.four,
    this.five,
    this.six,
    this.seven,
    this.eight,
    this.nine,
    this.ten,
    this.eleven,
    this.twelve,
    this.thirteen,
    this.fourteen,
    this.fifteen,
    this.sixteen,
    this.seventeen,
    this.eighteen,
    this.nineteen,
    this.twenty,
  });
  factory RatingFrequenciesModel.fromJson(Map<String, dynamic> json) {
    
    return _$RatingFrequenciesModelFromJson(json);
  }
}
