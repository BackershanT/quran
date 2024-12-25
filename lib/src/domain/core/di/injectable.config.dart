// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/chapters_list/chapters_list_bloc.dart' as _i5;
import '../../../infrastructure/chapter_list/chapter_list_repository.dart'
    as _i4;
import '../../chapter_list/i_chapters_list_repo.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.IChaptersListRepo>(() => _i4.ChapterListRepository());
  gh.factory<_i5.ChaptersListBloc>(
      () => _i5.ChaptersListBloc(get<_i3.IChaptersListRepo>()));
  return get;
}
