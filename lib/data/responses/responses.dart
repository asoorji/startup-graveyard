import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "message")
  String? message;

  BaseResponse(this.message, this.status);
  // from json
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
