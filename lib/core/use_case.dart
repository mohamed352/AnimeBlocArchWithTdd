abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class NoParamsUseCase<Type> {
  Future<Type> call();
}
