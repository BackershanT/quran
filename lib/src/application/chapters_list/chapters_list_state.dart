part of 'chapters_list_bloc.dart';

@freezed
class ChaptersListState with _$ChaptersListState {
  const factory ChaptersListState({
    required bool isLoading,
    required bool hasError,
    required List<Chapter> chaptersList,
  }) = _Initial;

  factory ChaptersListState.initial() => ChaptersListState(
        hasError: false,
        chaptersList: [],
        isLoading: false,
      );
}
