
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/domain/core/api_endpoints.dart';
import 'package:quran/src/domain/core/failure/main_failure.dart';

import '../../domain/chapter_list/i_chapters_list_repo.dart';
import '../../domain/chapter_list/model/chapters_list.dart';

@LazySingleton(as: IChaptersListRepo)
class ChapterListRepository implements IChaptersListRepo {
  @override
  Future<Either<MainFailure, ChapterListResp>> getChaptersListData() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndpoints.chaptersList);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ChapterListResp.fromJson(response.data);
        log(response.data());
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      return Left(MainFailure.clientFailure());
    }catch (e){
      log(e.toString());
      return Left (MainFailure.clientFailure());
    }
  }
}
