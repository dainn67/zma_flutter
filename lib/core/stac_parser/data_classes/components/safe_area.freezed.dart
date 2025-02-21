// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safe_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SafeArea _$SafeAreaFromJson(Map<String, dynamic> json) {
  return _SafeArea.fromJson(json);
}

/// @nodoc
mixin _$SafeArea {
  Map<String, dynamic> get child => throw _privateConstructorUsedError;
  bool? get left => throw _privateConstructorUsedError;
  bool? get top => throw _privateConstructorUsedError;
  bool? get right => throw _privateConstructorUsedError;
  bool? get bottom => throw _privateConstructorUsedError;
  bool? get maintainBottomViewPadding => throw _privateConstructorUsedError;
  double? get minimum => throw _privateConstructorUsedError;

  /// Serializes this SafeArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SafeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SafeAreaCopyWith<SafeArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeAreaCopyWith<$Res> {
  factory $SafeAreaCopyWith(SafeArea value, $Res Function(SafeArea) then) =
      _$SafeAreaCopyWithImpl<$Res, SafeArea>;
  @useResult
  $Res call(
      {Map<String, dynamic> child,
      bool? left,
      bool? top,
      bool? right,
      bool? bottom,
      bool? maintainBottomViewPadding,
      double? minimum});
}

/// @nodoc
class _$SafeAreaCopyWithImpl<$Res, $Val extends SafeArea>
    implements $SafeAreaCopyWith<$Res> {
  _$SafeAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SafeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? maintainBottomViewPadding = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as bool?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as bool?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainBottomViewPadding: freezed == maintainBottomViewPadding
          ? _value.maintainBottomViewPadding
          : maintainBottomViewPadding // ignore: cast_nullable_to_non_nullable
              as bool?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SafeAreaImplCopyWith<$Res>
    implements $SafeAreaCopyWith<$Res> {
  factory _$$SafeAreaImplCopyWith(
          _$SafeAreaImpl value, $Res Function(_$SafeAreaImpl) then) =
      __$$SafeAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> child,
      bool? left,
      bool? top,
      bool? right,
      bool? bottom,
      bool? maintainBottomViewPadding,
      double? minimum});
}

/// @nodoc
class __$$SafeAreaImplCopyWithImpl<$Res>
    extends _$SafeAreaCopyWithImpl<$Res, _$SafeAreaImpl>
    implements _$$SafeAreaImplCopyWith<$Res> {
  __$$SafeAreaImplCopyWithImpl(
      _$SafeAreaImpl _value, $Res Function(_$SafeAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SafeArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
    Object? maintainBottomViewPadding = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$SafeAreaImpl(
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as bool?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as bool?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as bool?,
      maintainBottomViewPadding: freezed == maintainBottomViewPadding
          ? _value.maintainBottomViewPadding
          : maintainBottomViewPadding // ignore: cast_nullable_to_non_nullable
              as bool?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SafeAreaImpl implements _SafeArea {
  const _$SafeAreaImpl(
      {required final Map<String, dynamic> child,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.maintainBottomViewPadding,
      this.minimum})
      : _child = child;

  factory _$SafeAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeAreaImplFromJson(json);

  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  final bool? left;
  @override
  final bool? top;
  @override
  final bool? right;
  @override
  final bool? bottom;
  @override
  final bool? maintainBottomViewPadding;
  @override
  final double? minimum;

  @override
  String toString() {
    return 'SafeArea(child: $child, left: $left, top: $top, right: $right, bottom: $bottom, maintainBottomViewPadding: $maintainBottomViewPadding, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeAreaImpl &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.maintainBottomViewPadding,
                    maintainBottomViewPadding) ||
                other.maintainBottomViewPadding == maintainBottomViewPadding) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      left,
      top,
      right,
      bottom,
      maintainBottomViewPadding,
      minimum);

  /// Create a copy of SafeArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeAreaImplCopyWith<_$SafeAreaImpl> get copyWith =>
      __$$SafeAreaImplCopyWithImpl<_$SafeAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeAreaImplToJson(
      this,
    );
  }
}

abstract class _SafeArea implements SafeArea {
  const factory _SafeArea(
      {required final Map<String, dynamic> child,
      final bool? left,
      final bool? top,
      final bool? right,
      final bool? bottom,
      final bool? maintainBottomViewPadding,
      final double? minimum}) = _$SafeAreaImpl;

  factory _SafeArea.fromJson(Map<String, dynamic> json) =
      _$SafeAreaImpl.fromJson;

  @override
  Map<String, dynamic> get child;
  @override
  bool? get left;
  @override
  bool? get top;
  @override
  bool? get right;
  @override
  bool? get bottom;
  @override
  bool? get maintainBottomViewPadding;
  @override
  double? get minimum;

  /// Create a copy of SafeArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafeAreaImplCopyWith<_$SafeAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
