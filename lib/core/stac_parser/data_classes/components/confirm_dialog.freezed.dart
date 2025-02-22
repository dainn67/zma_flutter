// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_stac_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmDialog _$ConfirmDialogFromJson(Map<String, dynamic> json) {
  return _ConfirmDialog.fromJson(json);
}

/// @nodoc
mixin _$ConfirmDialog {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get onConfirm => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onCancel => throw _privateConstructorUsedError;
  String? get confirmButtonText => throw _privateConstructorUsedError;
  String? get cancelButtonText => throw _privateConstructorUsedError;

  /// Serializes this ConfirmDialog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmDialog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmDialogCopyWith<ConfirmDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmDialogCopyWith<$Res> {
  factory $ConfirmDialogCopyWith(
          ConfirmDialog value, $Res Function(ConfirmDialog) then) =
      _$ConfirmDialogCopyWithImpl<$Res, ConfirmDialog>;
  @useResult
  $Res call(
      {String title,
      String message,
      Map<String, dynamic> onConfirm,
      Map<String, dynamic>? onCancel,
      String? confirmButtonText,
      String? cancelButtonText});
}

/// @nodoc
class _$ConfirmDialogCopyWithImpl<$Res, $Val extends ConfirmDialog>
    implements $ConfirmDialogCopyWith<$Res> {
  _$ConfirmDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmDialog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? onConfirm = null,
    Object? onCancel = freezed,
    Object? confirmButtonText = freezed,
    Object? cancelButtonText = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      onConfirm: null == onConfirm
          ? _value.onConfirm
          : onConfirm // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      onCancel: freezed == onCancel
          ? _value.onCancel
          : onCancel // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      confirmButtonText: freezed == confirmButtonText
          ? _value.confirmButtonText
          : confirmButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelButtonText: freezed == cancelButtonText
          ? _value.cancelButtonText
          : cancelButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmDialogImplCopyWith<$Res>
    implements $ConfirmDialogCopyWith<$Res> {
  factory _$$ConfirmDialogImplCopyWith(
          _$ConfirmDialogImpl value, $Res Function(_$ConfirmDialogImpl) then) =
      __$$ConfirmDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String message,
      Map<String, dynamic> onConfirm,
      Map<String, dynamic>? onCancel,
      String? confirmButtonText,
      String? cancelButtonText});
}

/// @nodoc
class __$$ConfirmDialogImplCopyWithImpl<$Res>
    extends _$ConfirmDialogCopyWithImpl<$Res, _$ConfirmDialogImpl>
    implements _$$ConfirmDialogImplCopyWith<$Res> {
  __$$ConfirmDialogImplCopyWithImpl(
      _$ConfirmDialogImpl _value, $Res Function(_$ConfirmDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmDialog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? onConfirm = null,
    Object? onCancel = freezed,
    Object? confirmButtonText = freezed,
    Object? cancelButtonText = freezed,
  }) {
    return _then(_$ConfirmDialogImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      onConfirm: null == onConfirm
          ? _value._onConfirm
          : onConfirm // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      onCancel: freezed == onCancel
          ? _value._onCancel
          : onCancel // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      confirmButtonText: freezed == confirmButtonText
          ? _value.confirmButtonText
          : confirmButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelButtonText: freezed == cancelButtonText
          ? _value.cancelButtonText
          : cancelButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmDialogImpl implements _ConfirmDialog {
  const _$ConfirmDialogImpl(
      {required this.title,
      required this.message,
      required final Map<String, dynamic> onConfirm,
      final Map<String, dynamic>? onCancel,
      this.confirmButtonText,
      this.cancelButtonText})
      : _onConfirm = onConfirm,
        _onCancel = onCancel;

  factory _$ConfirmDialogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmDialogImplFromJson(json);

  @override
  final String title;
  @override
  final String message;
  final Map<String, dynamic> _onConfirm;
  @override
  Map<String, dynamic> get onConfirm {
    if (_onConfirm is EqualUnmodifiableMapView) return _onConfirm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_onConfirm);
  }

  final Map<String, dynamic>? _onCancel;
  @override
  Map<String, dynamic>? get onCancel {
    final value = _onCancel;
    if (value == null) return null;
    if (_onCancel is EqualUnmodifiableMapView) return _onCancel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? confirmButtonText;
  @override
  final String? cancelButtonText;

  @override
  String toString() {
    return 'ConfirmDialog(title: $title, message: $message, onConfirm: $onConfirm, onCancel: $onCancel, confirmButtonText: $confirmButtonText, cancelButtonText: $cancelButtonText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._onConfirm, _onConfirm) &&
            const DeepCollectionEquality().equals(other._onCancel, _onCancel) &&
            (identical(other.confirmButtonText, confirmButtonText) ||
                other.confirmButtonText == confirmButtonText) &&
            (identical(other.cancelButtonText, cancelButtonText) ||
                other.cancelButtonText == cancelButtonText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      message,
      const DeepCollectionEquality().hash(_onConfirm),
      const DeepCollectionEquality().hash(_onCancel),
      confirmButtonText,
      cancelButtonText);

  /// Create a copy of ConfirmDialog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmDialogImplCopyWith<_$ConfirmDialogImpl> get copyWith =>
      __$$ConfirmDialogImplCopyWithImpl<_$ConfirmDialogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmDialogImplToJson(
      this,
    );
  }
}

abstract class _ConfirmDialog implements ConfirmDialog {
  const factory _ConfirmDialog(
      {required final String title,
      required final String message,
      required final Map<String, dynamic> onConfirm,
      final Map<String, dynamic>? onCancel,
      final String? confirmButtonText,
      final String? cancelButtonText}) = _$ConfirmDialogImpl;

  factory _ConfirmDialog.fromJson(Map<String, dynamic> json) =
      _$ConfirmDialogImpl.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  Map<String, dynamic> get onConfirm;
  @override
  Map<String, dynamic>? get onCancel;
  @override
  String? get confirmButtonText;
  @override
  String? get cancelButtonText;

  /// Create a copy of ConfirmDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmDialogImplCopyWith<_$ConfirmDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
