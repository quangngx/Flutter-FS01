import 'package:json_annotation/json_annotation.dart';

part 'picture.g.dart';

@JsonSerializable()
class Picture {
  final String? largeUrl;
  final String? mediumUrl;
  final String? thumbnailUrl;

  Picture({this.largeUrl, this.mediumUrl, this.thumbnailUrl});

  factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);
  
}
