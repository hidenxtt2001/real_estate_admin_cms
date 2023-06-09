part of 'app_bloc.dart';

@freezedBlocState
class AppState with _$AppState {
  const factory AppState({
    @Default(true) bool isFirstLaunch,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
