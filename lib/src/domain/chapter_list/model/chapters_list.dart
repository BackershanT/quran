import 'package:json_annotation/json_annotation.dart';

part 'chapters_list.g.dart';

@JsonSerializable()
class ChapterListResp {
  @JsonKey(name: 'chapters')
  List<Chapter> chapters;

  ChapterListResp({this.chapters = const []});

  factory ChapterListResp.fromJson(Map<String, dynamic> json) {
    return _$ChapterListRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChapterListRespToJson(this);
}

@JsonSerializable()
class Chapter {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'bismillah_pre')
  bool? bismillahPre;
  @JsonKey(name: 'name_simple')
  String? nameSimple;
  @JsonKey(name: 'name_complex')
  String? nameComplex;
  @JsonKey(name: 'name_arabic')
  String? nameArabic;

  List<int>? pages;

  Chapter({
    this.id,
    this.bismillahPre,
    this.nameSimple,
    this.nameComplex,
    this.nameArabic,
    this.pages,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return _$ChapterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
