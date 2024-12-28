import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/domain/chapter_list/i_chapters_list_repo.dart';
import 'package:quran/src/domain/chapter_list/model/chapters_list.dart';
import 'package:quran/src/domain/core/failure/main_failure.dart';

part 'chapters_list_event.dart';
part 'chapters_list_state.dart';
part 'chapters_list_bloc.freezed.dart';

@injectable
class ChaptersListBloc extends Bloc<ChaptersListEvent, ChaptersListState> {
  final IChaptersListRepo _chaptersListRepo;
  ChaptersListBloc(this._chaptersListRepo)
      : super(ChaptersListState.initial()) {
    on<GetQuranChaptersList>((event, emit) async {
      emit(ChaptersListState(
          isLoading: true, hasError: false, chaptersList: []));
      final _result = await _chaptersListRepo.getChaptersListData();
      final _newState = _result.fold((MainFailure failure) {
        return ChaptersListState(
          hasError: true,
          chaptersList: [],
          isLoading: false,
        );
      }, (ChapterListResp resp) {
        return ChaptersListState(
          isLoading: false,
          hasError: false,
          chaptersList: resp.chapters,
        );
      });
      emit(_newState);
      print(_newState);
      print(state.hasError);

      // TODO: implement event handler
    });
  }
}
