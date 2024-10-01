import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(
          {required List<GetAnimeResponseEntities> getAnimeResponseEntities}) =
      _Loaded;
  const factory HomeState.error({required String message}) = _Error;
}
