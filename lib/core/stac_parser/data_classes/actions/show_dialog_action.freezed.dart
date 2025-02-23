// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_dialog_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShowDialogAction _$ShowDialogActionFromJson(Map<String, dynamic> json) {
  return _ShowDialogAction.fromJson(json);
}

/// @nodoc
mixin _$ShowDialogAction {
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this ShowDialogAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShowDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowDialogActionCopyWith<ShowDialogAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDialogActionCopyWith<$Res> {
  factory $ShowDialogActionCopyWith(
          ShowDialogAction value, $Res Function(ShowDialogAction) then) =
      _$ShowDialogActionCopyWithImpl<$Res, ShowDialogAction>;
  @useResult
  $Res call({Map<String, dynamic> child});
}

/// @nodoc
class _$ShowDialogActionCopyWithImpl<$Res, $Val extends ShowDialogAction>
    implements $ShowDialogActionCopyWith<$Res> {
  _$ShowDialogActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowDialogActionImplCopyWith<$Res>
    implements $ShowDialogActionCopyWith<$Res> {
  factory _$$ShowDialogActionImplCopyWith(_$ShowDialogActionImpl value,
          $Res Function(_$ShowDialogActionImpl) then) =
      __$$ShowDialogActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> child});
}

/// @nodoc
class __$$ShowDialogActionImplCopyWithImpl<$Res>
    extends _$ShowDialogActionCopyWithImpl<$Res, _$ShowDialogActionImpl>
    implements _$$ShowDialogActionImplCopyWith<$Res> {
  __$$ShowDialogActionImplCopyWithImpl(_$ShowDialogActionImpl _value,
      $Res Function(_$ShowDialogActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$ShowDialogActionImpl(
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowDialogActionImpl implements _ShowDialogAction {
  const _$ShowDialogActionImpl({required final Map<String, dynamic> child})
      : _child = child;

  factory _$ShowDialogActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowDialogActionImplFromJson(json);

  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  String toString() {
    return 'ShowDialogAction(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialogActionImpl &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_child));

  /// Create a copy of ShowDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDialogActionImplCopyWith<_$ShowDialogActionImpl> get copyWith =>
      __$$ShowDialogActionImplCopyWithImpl<_$ShowDialogActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowDialogActionImplToJson(
      this,
    );
  }
}

abstract class _ShowDialogAction implements ShowDialogAction {
  const factory _ShowDialogAction({required final Map<String, dynamic> child}) =
      _$ShowDialogActionImpl;

  factory _ShowDialogAction.fromJson(Map<String, dynamic> json) =
      _$ShowDialogActionImpl.fromJson;

  @override
  Map<String, dynamic> get child;

  /// Create a copy of ShowDialogAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowDialogActionImplCopyWith<_$ShowDialogActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
