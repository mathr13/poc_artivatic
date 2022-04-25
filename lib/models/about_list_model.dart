import 'package:json_annotation/json_annotation.dart';

import 'item_model.dart';

part 'about_list_model.g.dart';

@JsonSerializable()
class AboutList {
  final String title;
  @JsonKey(name: "rows")
  final List<Item> items;

  AboutList(this.title, this.items);

  factory AboutList.fromJson(Map<String, dynamic> json) => _$AboutListFromJson(json);

  Map<String, dynamic> toJson() => _$AboutListToJson(this);
}