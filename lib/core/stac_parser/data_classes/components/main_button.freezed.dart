// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainButton _$MainButtonFromJson(Map<String, dynamic> json) {
  return _MainButton.fromJson(json);
}

/// @nodoc
mixin _$MainButton {
  String get title => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;
  double? get fontSize => throw _privateConstructorUsedError;
  bool? get isBold => throw _privateConstructorUsedError;
  bool? get isEnabled => throw _privateConstructorUsedError;
  double? get paddingHorizontal => throw _privateConstructorUsedError;
  double? get paddingVertical => throw _privateConstructorUsedError;
  double? get borderRadius => throw _privateConstructorUsedError;
  double? get borderWidth => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get borderColor => throw _privateConstructorUsedError;
  OnPressedAction? get onPressed => throw _privateConstructorUsedError;

  /// Serializes this MainButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainButtonCopyWith<MainButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainButtonCopyWith<$Res> {
  factory $MainButtonCopyWith(
          MainButton value, $Res Function(MainButton) then) =
      _$MainButtonCopyWithImpl<$Res, MainButton>;
  @useResult
  $Res call(
      {String title,
      String route,
      double? fontSize,
      bool? isBold,
      bool? isEnabled,
      double? paddingHorizontal,
      double? paddingVertical,
      double? borderRadius,
      double? borderWidth,
      double? elevation,
      String? textColor,
      String? backgroundColor,
      String? borderColor,
      OnPressedAction? onPressed});

  $OnPressedActionCopyWith<$Res>? get onPressed;
}

/// @nodoc
class _$MainButtonCopyWithImpl<$Res, $Val extends MainButton>
    implements $MainButtonCopyWith<$Res> {
  _$MainButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? fontSize = freezed,
    Object? isBold = freezed,
    Object? isEnabled = freezed,
    Object? paddingHorizontal = freezed,
    Object? paddingVertical = freezed,
    Object? borderRadius = freezed,
    Object? borderWidth = freezed,
    Object? elevation = freezed,
    Object? textColor = freezed,
    Object? backgroundColor = freezed,
    Object? borderColor = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      isBold: freezed == isBold
          ? _value.isBold
          : isBold // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      paddingHorizontal: freezed == paddingHorizontal
          ? _value.paddingHorizontal
          : paddingHorizontal // ignore: cast_nullable_to_non_nullable
              as double?,
      paddingVertical: freezed == paddingVertical
          ? _value.paddingVertical
          : paddingVertical // ignore: cast_nullable_to_non_nullable
              as double?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      borderWidth: freezed == borderWidth
          ? _value.borderWidth
          : borderWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as OnPressedAction?,
    ) as $Val);
  }

  /// Create a copy of MainButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnPressedActionCopyWith<$Res>? get onPressed {
    if (_value.onPressed == null) {
      return null;
    }

    return $OnPressedActionCopyWith<$Res>(_value.onPressed!, (value) {
      return _then(_value.copyWith(onPressed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainButtonImplCopyWith<$Res>
    implements $MainButtonCopyWith<$Res> {
  factory _$$MainButtonImplCopyWith(
          _$MainButtonImpl value, $Res Function(_$MainButtonImpl) then) =
      __$$MainButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String route,
      double? fontSize,
      bool? isBold,
      bool? isEnabled,
      double? paddingHorizontal,
      double? paddingVertical,
      double? borderRadius,
      double? borderWidth,
      double? elevation,
      String? textColor,
      String? backgroundColor,
      String? borderColor,
      OnPressedAction? onPressed});

  @override
  $OnPressedActionCopyWith<$Res>? get onPressed;
}

/// @nodoc
class __$$MainButtonImplCopyWithImpl<$Res>
    extends _$MainButtonCopyWithImpl<$Res, _$MainButtonImpl>
    implements _$$MainButtonImplCopyWith<$Res> {
  __$$MainButtonImplCopyWithImpl(
      _$MainButtonImpl _value, $Res Function(_$MainButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? route = null,
    Object? fontSize = freezed,
    Object? isBold = freezed,
    Object? isEnabled = freezed,
    Object? paddingHorizontal = freezed,
    Object? paddingVertical = freezed,
    Object? borderRadius = freezed,
    Object? borderWidth = freezed,
    Object? elevation = freezed,
    Object? textColor = freezed,
    Object? backgroundColor = freezed,
    Object? borderColor = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_$MainButtonImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      isBold: freezed == isBold
          ? _value.isBold
          : isBold // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      paddingHorizontal: freezed == paddingHorizontal
          ? _value.paddingHorizontal
          : paddingHorizontal // ignore: cast_nullable_to_non_nullable
              as double?,
      paddingVertical: freezed == paddingVertical
          ? _value.paddingVertical
          : paddingVertical // ignore: cast_nullable_to_non_nullable
              as double?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      borderWidth: freezed == borderWidth
          ? _value.borderWidth
          : borderWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as OnPressedAction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainButtonImpl implements _MainButton {
  const _$MainButtonImpl(
      {required this.title,
      required this.route,
      this.fontSize,
      this.isBold,
      this.isEnabled,
      this.paddingHorizontal,
      this.paddingVertical,
      this.borderRadius,
      this.borderWidth,
      this.elevation,
      this.textColor,
      this.backgroundColor,
      this.borderColor,
      this.onPressed});

  factory _$MainButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainButtonImplFromJson(json);

  @override
  final String title;
  @override
  final String route;
  @override
  final double? fontSize;
  @override
  final bool? isBold;
  @override
  final bool? isEnabled;
  @override
  final double? paddingHorizontal;
  @override
  final double? paddingVertical;
  @override
  final double? borderRadius;
  @override
  final double? borderWidth;
  @override
  final double? elevation;
  @override
  final String? textColor;
  @override
  final String? backgroundColor;
  @override
  final String? borderColor;
  @override
  final OnPressedAction? onPressed;

  @override
  String toString() {
    return 'MainButton(title: $title, route: $route, fontSize: $fontSize, isBold: $isBold, isEnabled: $isEnabled, paddingHorizontal: $paddingHorizontal, paddingVertical: $paddingVertical, borderRadius: $borderRadius, borderWidth: $borderWidth, elevation: $elevation, textColor: $textColor, backgroundColor: $backgroundColor, borderColor: $borderColor, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainButtonImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.isBold, isBold) || other.isBold == isBold) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.paddingHorizontal, paddingHorizontal) ||
                other.paddingHorizontal == paddingHorizontal) &&
            (identical(other.paddingVertical, paddingVertical) ||
                other.paddingVertical == paddingVertical) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.borderWidth, borderWidth) ||
                other.borderWidth == borderWidth) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      route,
      fontSize,
      isBold,
      isEnabled,
      paddingHorizontal,
      paddingVertical,
      borderRadius,
      borderWidth,
      elevation,
      textColor,
      backgroundColor,
      borderColor,
      onPressed);

  /// Create a copy of MainButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainButtonImplCopyWith<_$MainButtonImpl> get copyWith =>
      __$$MainButtonImplCopyWithImpl<_$MainButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainButtonImplToJson(
      this,
    );
  }
}

abstract class _MainButton implements MainButton {
  const factory _MainButton(
      {required final String title,
      required final String route,
      final double? fontSize,
      final bool? isBold,
      final bool? isEnabled,
      final double? paddingHorizontal,
      final double? paddingVertical,
      final double? borderRadius,
      final double? borderWidth,
      final double? elevation,
      final String? textColor,
      final String? backgroundColor,
      final String? borderColor,
      final OnPressedAction? onPressed}) = _$MainButtonImpl;

  factory _MainButton.fromJson(Map<String, dynamic> json) =
      _$MainButtonImpl.fromJson;

  @override
  String get title;
  @override
  String get route;
  @override
  double? get fontSize;
  @override
  bool? get isBold;
  @override
  bool? get isEnabled;
  @override
  double? get paddingHorizontal;
  @override
  double? get paddingVertical;
  @override
  double? get borderRadius;
  @override
  double? get borderWidth;
  @override
  double? get elevation;
  @override
  String? get textColor;
  @override
  String? get backgroundColor;
  @override
  String? get borderColor;
  @override
  OnPressedAction? get onPressed;

  /// Create a copy of MainButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainButtonImplCopyWith<_$MainButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OnPressedAction _$OnPressedActionFromJson(Map<String, dynamic> json) {
  return _OnPressedAction.fromJson(json);
}

/// @nodoc
mixin _$OnPressedAction {
  String get actionType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;

  /// Serializes this OnPressedAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnPressedAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnPressedActionCopyWith<OnPressedAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnPressedActionCopyWith<$Res> {
  factory $OnPressedActionCopyWith(
          OnPressedAction value, $Res Function(OnPressedAction) then) =
      _$OnPressedActionCopyWithImpl<$Res, OnPressedAction>;
  @useResult
  $Res call({String actionType, Map<String, dynamic>? parameters});
}

/// @nodoc
class _$OnPressedActionCopyWithImpl<$Res, $Val extends OnPressedAction>
    implements $OnPressedActionCopyWith<$Res> {
  _$OnPressedActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnPressedAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnPressedActionImplCopyWith<$Res>
    implements $OnPressedActionCopyWith<$Res> {
  factory _$$OnPressedActionImplCopyWith(_$OnPressedActionImpl value,
          $Res Function(_$OnPressedActionImpl) then) =
      __$$OnPressedActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String actionType, Map<String, dynamic>? parameters});
}

/// @nodoc
class __$$OnPressedActionImplCopyWithImpl<$Res>
    extends _$OnPressedActionCopyWithImpl<$Res, _$OnPressedActionImpl>
    implements _$$OnPressedActionImplCopyWith<$Res> {
  __$$OnPressedActionImplCopyWithImpl(
      _$OnPressedActionImpl _value, $Res Function(_$OnPressedActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnPressedAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? parameters = freezed,
  }) {
    return _then(_$OnPressedActionImpl(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnPressedActionImpl implements _OnPressedAction {
  const _$OnPressedActionImpl(
      {required this.actionType, final Map<String, dynamic>? parameters})
      : _parameters = parameters;

  factory _$OnPressedActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnPressedActionImplFromJson(json);

  @override
  final String actionType;
  final Map<String, dynamic>? _parameters;
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OnPressedAction(actionType: $actionType, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPressedActionImpl &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, actionType,
      const DeepCollectionEquality().hash(_parameters));

  /// Create a copy of OnPressedAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPressedActionImplCopyWith<_$OnPressedActionImpl> get copyWith =>
      __$$OnPressedActionImplCopyWithImpl<_$OnPressedActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnPressedActionImplToJson(
      this,
    );
  }
}

abstract class _OnPressedAction implements OnPressedAction {
  const factory _OnPressedAction(
      {required final String actionType,
      final Map<String, dynamic>? parameters}) = _$OnPressedActionImpl;

  factory _OnPressedAction.fromJson(Map<String, dynamic> json) =
      _$OnPressedActionImpl.fromJson;

  @override
  String get actionType;
  @override
  Map<String, dynamic>? get parameters;

  /// Create a copy of OnPressedAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPressedActionImplCopyWith<_$OnPressedActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
