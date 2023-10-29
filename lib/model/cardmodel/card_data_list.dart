import 'package:json_annotation/json_annotation.dart';

part 'card_data_list.g.dart';

@JsonSerializable()
class CardDataListResponse {
  @JsonKey(name: 'related', defaultValue: [])
  List? related;

  CardDataListResponse({
    this.related,
  });

  factory CardDataListResponse.fromJson(Map<String, dynamic> json) =>
      _$CardDataListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CardDataListResponseToJson(this);
}
