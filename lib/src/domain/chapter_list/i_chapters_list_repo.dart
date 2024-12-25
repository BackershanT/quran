import 'package:dartz/dartz.dart';
import 'package:quran/src/domain/core/failure/main_failure.dart';

import 'model/chapters_list.dart';

abstract class IChaptersListRepo{
  Future<Either<MainFailure, ChapterListResp>> getChaptersListData();
}

