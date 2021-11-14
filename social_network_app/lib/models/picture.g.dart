// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      largeUrl: json['largeUrl'] as String?,
      mediumUrl: json['mediumUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'largeUrl': instance.largeUrl,
      'mediumUrl': instance.mediumUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };
