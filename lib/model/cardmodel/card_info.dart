import 'package:json_annotation/json_annotation.dart';

part 'card_info.g.dart';

@JsonSerializable()
class CardInfoResponse {
  @JsonKey(name: 'header', defaultValue: '')
  String? header;

  @JsonKey(name: 'description', defaultValue: '')
  String? des;

  @JsonKey(name: 'image', defaultValue: '')
  String? image;

  @JsonKey(name: 'ref', defaultValue: '')
  String? ref;

  CardInfoResponse({
    this.header,
    this.des,
    this.image,
    this.ref,
  });

  factory CardInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$CardInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoResponseToJson(this);
}
