import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/domain/ayah_script/i_ayah_resp.dart';
import 'package:quran/src/domain/ayah_script/model/ayah_resp/ayah_resp.dart';
import 'package:quran/src/domain/ayah_script/model/ayah_resp/verse.dart';
import 'package:quran/src/domain/core/failure/main_failure.dart';

part 'ayah_resp_event.dart';
part 'ayah_resp_state.dart';
part 'ayah_resp_bloc.freezed.dart';

@injectable
class AyahRespBloc extends Bloc<AyahRespEvent, AyahRespState> {
  final IAyahRespRepo _ayahRespRepo;
  AyahRespBloc(this._ayahRespRepo) : super(AyahRespState.initial()) {
    on<GetAyahRespData>((event, emit) async {
      emit(AyahRespState(hasError: false, isLoading: true, verse: []));

      final _result = await _ayahRespRepo.getAyahRespData();
      final _newState = _result.fold((MainFailure failure) {
        return AyahRespState(hasError: true,
            isLoading: false,
            verse: []);
      }, (AyahResp resp) {
        return AyahRespState(
            hasError: false,
            isLoading: false,
            verse: resp.results );
      });
      emit(_newState);
      print(_newState);
      // print(state.verse[].id);
      // print(state.verse[].textUthmaniSimple);
      // print(state.verse[].verseKey);
    });
  }
}
