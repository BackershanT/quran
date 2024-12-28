part of 'ayah_resp_bloc.dart';

@freezed
class AyahRespState with _$AyahRespState {
  const factory AyahRespState({
    required bool hasError,
    required bool isLoading,
    required List<Verse> verse,
  }) = _Initial;
  factory AyahRespState.initial() =>
      AyahRespState(hasError: false, isLoading: false, verse: []);
}
