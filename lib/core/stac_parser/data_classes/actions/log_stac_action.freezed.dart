// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_stac_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogStacAction _$LogStacActionFromJson(Map<String, dynamic> json) {
  return _LogStacAction.fromJson(json);
}

/// @nodoc
mixin _$LogStacAction {
  String get message => throw _privateConstructorUsedError;
  String? get logType => throw _privateConstructorUsedError;

  /// Serializes this LogStacAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogStacAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogStacActionCopyWith<LogStacAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogStacActionCopyWith<$Res> {
  factory $LogStacActionCopyWith(
          LogStacAction value, $Res Function(LogStacAction) then) =
      _$LogStacActionCopyWithImpl<$Res, LogStacAction>;
  @useResult
  $Res call({String message, String? logType});
}

/// @nodoc
class _$LogStacActionCopyWithImpl<$Res, $Val extends LogStacAction>
    implements $LogStacActionCopyWith<$Res> {
  _$LogStacActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogStacAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? logType = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      logType: freezed == logType
          ? _value.logType
          : logType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogStacActionImplCopyWith<$Res>
    implements $LogStacActionCopyWith<$Res> {
  factory _$$LogStacActionImplCopyWith(
          _$LogStacActionImpl value, $Res Function(_$LogStacActionImpl) then) =
      __$$LogStacActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? logType});
}

/// @nodoc
class __$$LogStacActionImplCopyWithImpl<$Res>
    extends _$LogStacActionCopyWithImpl<$Res, _$LogStacActionImpl>
    implements _$$LogStacActionImplCopyWith<$Res> {
  __$$LogStacActionImplCopyWithImpl(
      _$LogStacActionImpl _value, $Res Function(_$LogStacActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogStacAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? logType = freezed,
  }) {
    return _then(_$LogStacActionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      logType: freezed == logType
          ? _value.logType
          : logType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogStacActionImpl implements _LogStacAction {
  const _$LogStacActionImpl({required this.message, this.logType});

  factory _$LogStacActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogStacActionImplFromJson(json);

  @override
  final String message;
  @override
  final String? logType;

  @override
  String toString() {
    return 'LogStacAction(message: $message, logType: $logType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogStacActionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.logType, logType) || other.logType == logType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, logType);

  /// Create a copy of LogStacAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogStacActionImplCopyWith<_$LogStacActionImpl> get copyWith =>
      __$$LogStacActionImplCopyWithImpl<_$LogStacActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogStacActionImplToJson(
      this,
    );
  }
}

abstract class _LogStacAction implements LogStacAction {
  const factory _LogStacAction(
      {required final String message,
      final String? logType}) = _$LogStacActionImpl;

  factory _LogStacAction.fromJson(Map<String, dynamic> json) =
      _$LogStacActionImpl.fromJson;

  @override
  String get message;
  @override
  String? get logType;

  /// Create a copy of LogStacAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogStacActionImplCopyWith<_$LogStacActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
