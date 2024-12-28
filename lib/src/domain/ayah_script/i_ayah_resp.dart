import 'package:dartz/dartz.dart';
import 'package:quran/src/domain/ayah_script/model/ayah_resp/ayah_resp.dart';
import 'package:quran/src/domain/core/failure/main_failure.dart';

abstract class IAyahRespRepo {
  Future<Either<MainFailure, AyahResp>> getAyahRespData();
}
