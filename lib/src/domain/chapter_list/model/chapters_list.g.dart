// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapters_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterListResp _$ChapterListRespFromJson(Map<String, dynamic> json) =>
    ChapterListResp(
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChapterListRespToJson(ChapterListResp instance) =>
    <String, dynamic>{
      'chapters': instance.chapters,
    };

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      id: (json['id'] as num?)?.toInt(),
      bismillahPre: json['bismillah_pre'] as bool?,
      nameSimple: json['name_simple'] as String?,
      nameComplex: json['name_complex'] as String?,
      nameArabic: json['name_arabic'] as String?,
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'bismillah_pre': instance.bismillahPre,
      'name_simple': instance.nameSimple,
      'name_complex': instance.nameComplex,
      'name_arabic': instance.nameArabic,
      'pages': instance.pages,
    };
