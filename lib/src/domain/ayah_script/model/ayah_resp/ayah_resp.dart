import 'package:json_annotation/json_annotation.dart';

import 'verse.dart';

part 'ayah_resp.g.dart';

@JsonSerializable()
class AyahResp {
  @JsonKey(name: 'results')
  List<Verse> results;

  AyahResp({this.results=const []});

  factory AyahResp.fromJson(Map<String, dynamic> json) {
    return _$AyahRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AyahRespToJson(this);
}
