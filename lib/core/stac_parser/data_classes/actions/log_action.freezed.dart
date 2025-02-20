// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogAction _$LogActionFromJson(Map<String, dynamic> json) {
  return _LogAction.fromJson(json);
}

/// @nodoc
mixin _$LogAction {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this LogAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogActionCopyWith<LogAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogActionCopyWith<$Res> {
  factory $LogActionCopyWith(LogAction value, $Res Function(LogAction) then) =
      _$LogActionCopyWithImpl<$Res, LogAction>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LogActionCopyWithImpl<$Res, $Val extends LogAction>
    implements $LogActionCopyWith<$Res> {
  _$LogActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogActionImplCopyWith<$Res>
    implements $LogActionCopyWith<$Res> {
  factory _$$LogActionImplCopyWith(
          _$LogActionImpl value, $Res Function(_$LogActionImpl) then) =
      __$$LogActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LogActionImplCopyWithImpl<$Res>
    extends _$LogActionCopyWithImpl<$Res, _$LogActionImpl>
    implements _$$LogActionImplCopyWith<$Res> {
  __$$LogActionImplCopyWithImpl(
      _$LogActionImpl _value, $Res Function(_$LogActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LogActionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogActionImpl implements _LogAction {
  const _$LogActionImpl({required this.message});

  factory _$LogActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogActionImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'LogAction(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogActionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LogAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogActionImplCopyWith<_$LogActionImpl> get copyWith =>
      __$$LogActionImplCopyWithImpl<_$LogActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogActionImplToJson(
      this,
    );
  }
}

abstract class _LogAction implements LogAction {
  const factory _LogAction({required final String message}) = _$LogActionImpl;

  factory _LogAction.fromJson(Map<String, dynamic> json) =
      _$LogActionImpl.fromJson;

  @override
  String get message;

  /// Create a copy of LogAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogActionImplCopyWith<_$LogActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
