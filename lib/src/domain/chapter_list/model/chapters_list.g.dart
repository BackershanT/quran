// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapters_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterListResp _$ChapterListRespFromJson(Map<String, dynamic> json) =>
    ChapterListResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChapterListRespToJson(ChapterListResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      id: (json['id'] as num?)?.toInt(),
      revelationPlace: json['revelation_place'] as String?,
      revelationOrder: (json['revelation_order'] as num?)?.toInt(),
      bismillahPre: json['bismillah_pre'] as bool?,
      nameSimple: json['name_simple'] as String?,
      nameComplex: json['name_complex'] as String?,
      nameArabic: json['name_arabic'] as String?,
      versesCount: (json['verses_count'] as num?)?.toInt(),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'revelation_place': instance.revelationPlace,
      'revelation_order': instance.revelationOrder,
      'bismillah_pre': instance.bismillahPre,
      'name_simple': instance.nameSimple,
      'name_complex': instance.nameComplex,
      'name_arabic': instance.nameArabic,
      'verses_count': instance.versesCount,
      'pages': instance.pages,
    };
