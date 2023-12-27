// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graveyard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraveyardModelResponse _$GraveyardModelResponseFromJson(
        Map<String, dynamic> json) =>
    GraveyardModelResponse(
      json['message'] as String?,
      json['status'] as String?,
      json['data'] == null
          ? null
          : Graveyard.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GraveyardModelResponseToJson(
        GraveyardModelResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

GraveyardListModelResponse _$GraveyardListModelResponseFromJson(
        Map<String, dynamic> json) =>
    GraveyardListModelResponse(
      json['message'] as String?,
      json['status'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => Graveyard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GraveyardListModelResponseToJson(
        GraveyardListModelResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$GraveyardModelImpl _$$GraveyardModelImplFromJson(Map<String, dynamic> json) =>
    _$GraveyardModelImpl(
      id: json['id'] as num?,
      graves: (json['graves'] as List<dynamic>?)
          ?.map((e) => Graveyard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GraveyardModelImplToJson(
        _$GraveyardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'graves': instance.graves,
    };
