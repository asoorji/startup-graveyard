// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graveyard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraveyardModel _$GraveyardModelFromJson(Map<String, dynamic> json) {
  return _GraveyardModel.fromJson(json);
}

/// @nodoc
mixin _$GraveyardModel {
  @JsonKey(name: 'id')
  num? get id => throw _privateConstructorUsedError;
  List<Graveyard>? get graves => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraveyardModelCopyWith<GraveyardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraveyardModelCopyWith<$Res> {
  factory $GraveyardModelCopyWith(
          GraveyardModel value, $Res Function(GraveyardModel) then) =
      _$GraveyardModelCopyWithImpl<$Res, GraveyardModel>;
  @useResult
  $Res call({@JsonKey(name: 'id') num? id, List<Graveyard>? graves});
}

/// @nodoc
class _$GraveyardModelCopyWithImpl<$Res, $Val extends GraveyardModel>
    implements $GraveyardModelCopyWith<$Res> {
  _$GraveyardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? graves = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      graves: freezed == graves
          ? _value.graves
          : graves // ignore: cast_nullable_to_non_nullable
              as List<Graveyard>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraveyardModelImplCopyWith<$Res>
    implements $GraveyardModelCopyWith<$Res> {
  factory _$$GraveyardModelImplCopyWith(_$GraveyardModelImpl value,
          $Res Function(_$GraveyardModelImpl) then) =
      __$$GraveyardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') num? id, List<Graveyard>? graves});
}

/// @nodoc
class __$$GraveyardModelImplCopyWithImpl<$Res>
    extends _$GraveyardModelCopyWithImpl<$Res, _$GraveyardModelImpl>
    implements _$$GraveyardModelImplCopyWith<$Res> {
  __$$GraveyardModelImplCopyWithImpl(
      _$GraveyardModelImpl _value, $Res Function(_$GraveyardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? graves = freezed,
  }) {
    return _then(_$GraveyardModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      graves: freezed == graves
          ? _value._graves
          : graves // ignore: cast_nullable_to_non_nullable
              as List<Graveyard>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GraveyardModelImpl implements _GraveyardModel {
  const _$GraveyardModelImpl(
      {@JsonKey(name: 'id') this.id, final List<Graveyard>? graves})
      : _graves = graves;

  factory _$GraveyardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraveyardModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final num? id;
  final List<Graveyard>? _graves;
  @override
  List<Graveyard>? get graves {
    final value = _graves;
    if (value == null) return null;
    if (_graves is EqualUnmodifiableListView) return _graves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GraveyardModel(id: $id, graves: $graves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraveyardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._graves, _graves));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_graves));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraveyardModelImplCopyWith<_$GraveyardModelImpl> get copyWith =>
      __$$GraveyardModelImplCopyWithImpl<_$GraveyardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraveyardModelImplToJson(
      this,
    );
  }
}

abstract class _GraveyardModel implements GraveyardModel {
  const factory _GraveyardModel(
      {@JsonKey(name: 'id') final num? id,
      final List<Graveyard>? graves}) = _$GraveyardModelImpl;

  factory _GraveyardModel.fromJson(Map<String, dynamic> json) =
      _$GraveyardModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  num? get id;
  @override
  List<Graveyard>? get graves;
  @override
  @JsonKey(ignore: true)
  _$$GraveyardModelImplCopyWith<_$GraveyardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
