import 'package:json_annotation/json_annotation.dart';

part 'verse.g.dart';

@JsonSerializable()
class Verse {
  @JsonKey(name: 'id')

  int? id;
  @JsonKey(name: 'verse_key')
  String? verseKey;
  @JsonKey(name: 'text_uthmani_simple')
  String? textUthmaniSimple;

  Verse({this.id, this.verseKey, this.textUthmaniSimple});

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);

  Map<String, dynamic> toJson() => _$VerseToJson(this);
}
