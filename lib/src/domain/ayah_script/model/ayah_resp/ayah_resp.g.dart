// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AyahResp _$AyahRespFromJson(Map<String, dynamic> json) => AyahResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AyahRespToJson(AyahResp instance) => <String, dynamic>{
      'results': instance.results,
    };
