// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicModel _$MusicModelFromJson(Map<String, dynamic> json) {
  return MusicModel(
    id: json['_id'] as String?,
    nome: json['nome'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$MusicModelToJson(MusicModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'nome': instance.nome,
      'url': instance.url,
    };
