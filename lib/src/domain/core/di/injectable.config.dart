// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/ayah_resp/ayah_resp_bloc.dart' as _i7;
import '../../../application/chapters_list/chapters_list_bloc.dart' as _i8;
import '../../../infrastructure/ayah_resp/ayah_resp_repository.dart' as _i4;
import '../../../infrastructure/chapter_list/chapter_list_repository.dart'
    as _i6;
import '../../ayah_script/i_ayah_resp.dart' as _i3;
import '../../chapter_list/i_chapters_list_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IAyahRespRepo>(() => _i4.AyahRespRepository());
  gh.lazySingleton<_i5.IChaptersListRepo>(() => _i6.ChapterListRepository());
  gh.factory<_i7.AyahRespBloc>(
      () => _i7.AyahRespBloc(get<_i3.IAyahRespRepo>()));
  gh.factory<_i8.ChaptersListBloc>(
      () => _i8.ChaptersListBloc(get<_i5.IChaptersListRepo>()));
  return get;
}
