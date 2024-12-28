import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/domain/ayah_script/model/ayah_resp/ayah_resp.dart';
import 'package:quran/src/domain/core/api_endpoints.dart';
import 'package:quran/src/domain/core/failure/main_failure.dart';

import '../../domain/ayah_script/i_ayah_resp.dart';

@LazySingleton(as: IAyahRespRepo)
class AyahRespRepository implements IAyahRespRepo {
  @override
  Future<Either<MainFailure, AyahResp>> getAyahRespData() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndpoints.ayahResp);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = AyahResp.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      return Left(MainFailure.clientFailure());
    } catch (e) {
      log(e.toString());
      return Left(MainFailure.clientFailure());
    }
  }
}
