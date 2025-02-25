// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_stac_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RouteStacAction _$RouteStacActionFromJson(Map<String, dynamic> json) {
  return _RouteStacAction.fromJson(json);
}

/// @nodoc
mixin _$RouteStacAction {
  String get routeName => throw _privateConstructorUsedError;
  String get navigationStyle => throw _privateConstructorUsedError;
  Map<String, dynamic>? get params => throw _privateConstructorUsedError;

  /// Serializes this RouteStacAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteStacAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteStacActionCopyWith<RouteStacAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStacActionCopyWith<$Res> {
  factory $RouteStacActionCopyWith(
          RouteStacAction value, $Res Function(RouteStacAction) then) =
      _$RouteStacActionCopyWithImpl<$Res, RouteStacAction>;
  @useResult
  $Res call(
      {String routeName, String navigationStyle, Map<String, dynamic>? params});
}

/// @nodoc
class _$RouteStacActionCopyWithImpl<$Res, $Val extends RouteStacAction>
    implements $RouteStacActionCopyWith<$Res> {
  _$RouteStacActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteStacAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? navigationStyle = null,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      navigationStyle: null == navigationStyle
          ? _value.navigationStyle
          : navigationStyle // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteStacActionImplCopyWith<$Res>
    implements $RouteStacActionCopyWith<$Res> {
  factory _$$RouteStacActionImplCopyWith(_$RouteStacActionImpl value,
          $Res Function(_$RouteStacActionImpl) then) =
      __$$RouteStacActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String routeName, String navigationStyle, Map<String, dynamic>? params});
}

/// @nodoc
class __$$RouteStacActionImplCopyWithImpl<$Res>
    extends _$RouteStacActionCopyWithImpl<$Res, _$RouteStacActionImpl>
    implements _$$RouteStacActionImplCopyWith<$Res> {
  __$$RouteStacActionImplCopyWithImpl(
      _$RouteStacActionImpl _value, $Res Function(_$RouteStacActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteStacAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? navigationStyle = null,
    Object? params = freezed,
  }) {
    return _then(_$RouteStacActionImpl(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      navigationStyle: null == navigationStyle
          ? _value.navigationStyle
          : navigationStyle // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteStacActionImpl implements _RouteStacAction {
  const _$RouteStacActionImpl(
      {required this.routeName,
      required this.navigationStyle,
      final Map<String, dynamic>? params})
      : _params = params;

  factory _$RouteStacActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteStacActionImplFromJson(json);

  @override
  final String routeName;
  @override
  final String navigationStyle;
  final Map<String, dynamic>? _params;
  @override
  Map<String, dynamic>? get params {
    final value = _params;
    if (value == null) return null;
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RouteStacAction(routeName: $routeName, navigationStyle: $navigationStyle, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteStacActionImpl &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.navigationStyle, navigationStyle) ||
                other.navigationStyle == navigationStyle) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, navigationStyle,
      const DeepCollectionEquality().hash(_params));

  /// Create a copy of RouteStacAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteStacActionImplCopyWith<_$RouteStacActionImpl> get copyWith =>
      __$$RouteStacActionImplCopyWithImpl<_$RouteStacActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteStacActionImplToJson(
      this,
    );
  }
}

abstract class _RouteStacAction implements RouteStacAction {
  const factory _RouteStacAction(
      {required final String routeName,
      required final String navigationStyle,
      final Map<String, dynamic>? params}) = _$RouteStacActionImpl;

  factory _RouteStacAction.fromJson(Map<String, dynamic> json) =
      _$RouteStacActionImpl.fromJson;

  @override
  String get routeName;
  @override
  String get navigationStyle;
  @override
  Map<String, dynamic>? get params;

  /// Create a copy of RouteStacAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteStacActionImplCopyWith<_$RouteStacActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
