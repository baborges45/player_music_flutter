import 'package:json_annotation/json_annotation.dart';

part 'music_model.g.dart';

@JsonSerializable()
class MusicModel {
  @JsonKey(name: '_id')
  String? id;
  String? nome;
  String? url;

  MusicModel({this.id, this.nome, this.url});

  factory MusicModel.fromJson(Map<String, dynamic> json) =>
      _$MusicModelFromJson(json);
  Map<String, dynamic> toJson() => _$MusicModelToJson(this);
}
