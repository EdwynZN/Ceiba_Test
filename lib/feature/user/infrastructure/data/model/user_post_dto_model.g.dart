// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPostDTOModelImpl _$$UserPostDTOModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPostDTOModelImpl(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$UserPostDTOModelImplToJson(
        _$UserPostDTOModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
