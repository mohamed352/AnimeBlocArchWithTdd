import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_feature/features/Home/domain/usecases/get_anime_use_case.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_event.dart';
import 'package:test_bloc_feature/features/Home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAnimeUseCase _getAnimeUseCase;
  HomeBloc(this._getAnimeUseCase) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      emit(const HomeState.loading());
      final responses = await _getAnimeUseCase.call();
   
      emit(responses.when(
          success: (data) => HomeState.loaded(getAnimeResponseEntities: data),
          failure: (error) => HomeState.error(
                message: error.toString(),
              )));
    });

    
    

    }
}
