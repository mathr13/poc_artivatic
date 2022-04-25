// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutList _$AboutListFromJson(Map<String, dynamic> json) => AboutList(
      json['title'] as String,
      (json['rows'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AboutListToJson(AboutList instance) => <String, dynamic>{
      'title': instance.title,
      'rows': instance.items,
    };
