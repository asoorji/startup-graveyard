import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/responses/responses.dart';
part 'graveyard_model.g.dart';
part 'graveyard_model.freezed.dart';

class Graveyard {
  num? id;
  String? createdAt;
  String? name;
  String? country;

  Graveyard({
    this.id,
    this.createdAt,
    this.name,
    this.country,
  });

  Graveyard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    name = json['name'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['name'] = this.name;
    data['country'] = this.country;

    return data;
  }
}

@JsonSerializable()
class GraveyardModelResponse extends BaseResponse {
  @JsonKey(name: "data")
  Graveyard? data;

  GraveyardModelResponse(super.message, super.status, this.data);

// from json
  factory GraveyardModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GraveyardModelResponseFromJson(json);

// to json
  @override
  Map<String, dynamic> toJson() => _$GraveyardModelResponseToJson(this);
}

@freezed
class GraveyardModel with _$GraveyardModel {
  const factory GraveyardModel(
      {@JsonKey(name: 'id') num? id,
      List<Graveyard>? graves}) = _GraveyardModel;

  factory GraveyardModel.fromJson(Map<String, dynamic> json) =>
      _$GraveyardModelFromJson(json);
}

@JsonSerializable()
class GraveyardListModelResponse extends BaseResponse {
  @JsonKey(name: "data")
  List<Graveyard>? data;

  GraveyardListModelResponse(super.message, super.status, this.data);

// from json
  factory GraveyardListModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GraveyardListModelResponseFromJson(json);

// to json
  @override
  Map<String, dynamic> toJson() => _$GraveyardListModelResponseToJson(this);
}
