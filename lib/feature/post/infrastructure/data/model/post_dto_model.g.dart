// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDTOModelImpl _$$PostDTOModelImplFromJson(Map<String, dynamic> json) =>
    _$PostDTOModelImpl(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$PostDTOModelImplToJson(_$PostDTOModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
