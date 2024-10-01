// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_anime_response_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAnimeResponseEntities {
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get canonicalTitle => throw _privateConstructorUsedError;
  String? get posterImage => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;

  /// Create a copy of GetAnimeResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAnimeResponseEntitiesCopyWith<GetAnimeResponseEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAnimeResponseEntitiesCopyWith<$Res> {
  factory $GetAnimeResponseEntitiesCopyWith(GetAnimeResponseEntities value,
          $Res Function(GetAnimeResponseEntities) then) =
      _$GetAnimeResponseEntitiesCopyWithImpl<$Res, GetAnimeResponseEntities>;
  @useResult
  $Res call(
      {String? slug,
      String? description,
      String? canonicalTitle,
      String? posterImage,
      String? coverImage});
}

/// @nodoc
class _$GetAnimeResponseEntitiesCopyWithImpl<$Res,
        $Val extends GetAnimeResponseEntities>
    implements $GetAnimeResponseEntitiesCopyWith<$Res> {
  _$GetAnimeResponseEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAnimeResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? description = freezed,
    Object? canonicalTitle = freezed,
    Object? posterImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalTitle: freezed == canonicalTitle
          ? _value.canonicalTitle
          : canonicalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAnimeResponseEntitiesImplCopyWith<$Res>
    implements $GetAnimeResponseEntitiesCopyWith<$Res> {
  factory _$$GetAnimeResponseEntitiesImplCopyWith(
          _$GetAnimeResponseEntitiesImpl value,
          $Res Function(_$GetAnimeResponseEntitiesImpl) then) =
      __$$GetAnimeResponseEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slug,
      String? description,
      String? canonicalTitle,
      String? posterImage,
      String? coverImage});
}

/// @nodoc
class __$$GetAnimeResponseEntitiesImplCopyWithImpl<$Res>
    extends _$GetAnimeResponseEntitiesCopyWithImpl<$Res,
        _$GetAnimeResponseEntitiesImpl>
    implements _$$GetAnimeResponseEntitiesImplCopyWith<$Res> {
  __$$GetAnimeResponseEntitiesImplCopyWithImpl(
      _$GetAnimeResponseEntitiesImpl _value,
      $Res Function(_$GetAnimeResponseEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAnimeResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? description = freezed,
    Object? canonicalTitle = freezed,
    Object? posterImage = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_$GetAnimeResponseEntitiesImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalTitle: freezed == canonicalTitle
          ? _value.canonicalTitle
          : canonicalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetAnimeResponseEntitiesImpl implements _GetAnimeResponseEntities {
  const _$GetAnimeResponseEntitiesImpl(
      {required this.slug,
      required this.description,
      required this.canonicalTitle,
      required this.posterImage,
      required this.coverImage});

  @override
  final String? slug;
  @override
  final String? description;
  @override
  final String? canonicalTitle;
  @override
  final String? posterImage;
  @override
  final String? coverImage;

  @override
  String toString() {
    return 'GetAnimeResponseEntities(slug: $slug, description: $description, canonicalTitle: $canonicalTitle, posterImage: $posterImage, coverImage: $coverImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAnimeResponseEntitiesImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.canonicalTitle, canonicalTitle) ||
                other.canonicalTitle == canonicalTitle) &&
            (identical(other.posterImage, posterImage) ||
                other.posterImage == posterImage) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, slug, description, canonicalTitle, posterImage, coverImage);

  /// Create a copy of GetAnimeResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAnimeResponseEntitiesImplCopyWith<_$GetAnimeResponseEntitiesImpl>
      get copyWith => __$$GetAnimeResponseEntitiesImplCopyWithImpl<
          _$GetAnimeResponseEntitiesImpl>(this, _$identity);
}

abstract class _GetAnimeResponseEntities implements GetAnimeResponseEntities {
  const factory _GetAnimeResponseEntities(
      {required final String? slug,
      required final String? description,
      required final String? canonicalTitle,
      required final String? posterImage,
      required final String? coverImage}) = _$GetAnimeResponseEntitiesImpl;

  @override
  String? get slug;
  @override
  String? get description;
  @override
  String? get canonicalTitle;
  @override
  String? get posterImage;
  @override
  String? get coverImage;

  /// Create a copy of GetAnimeResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAnimeResponseEntitiesImplCopyWith<_$GetAnimeResponseEntitiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
