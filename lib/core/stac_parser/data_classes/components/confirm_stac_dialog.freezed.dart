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

ConfirmStacDialog _$ConfirmStacDialogFromJson(Map<String, dynamic> json) {
  return _ConfirmStacDialog.fromJson(json);
}

/// @nodoc
mixin _$ConfirmStacDialog {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  dynamic get onConfirm => throw _privateConstructorUsedError;
  dynamic get onCancel => throw _privateConstructorUsedError;
  String? get confirmButtonText => throw _privateConstructorUsedError;
  String? get cancelButtonText => throw _privateConstructorUsedError;

  /// Serializes this ConfirmStacDialog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmStacDialog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmStacDialogCopyWith<ConfirmStacDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmStacDialogCopyWith<$Res> {
  factory $ConfirmStacDialogCopyWith(
          ConfirmStacDialog value, $Res Function(ConfirmStacDialog) then) =
      _$ConfirmStacDialogCopyWithImpl<$Res, ConfirmStacDialog>;
  @useResult
  $Res call(
      {String title,
      String message,
      dynamic onConfirm,
      dynamic onCancel,
      String? confirmButtonText,
      String? cancelButtonText});
}

/// @nodoc
class _$ConfirmStacDialogCopyWithImpl<$Res, $Val extends ConfirmStacDialog>
    implements $ConfirmStacDialogCopyWith<$Res> {
  _$ConfirmStacDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmStacDialog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? onConfirm = freezed,
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
      onConfirm: freezed == onConfirm
          ? _value.onConfirm
          : onConfirm // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onCancel: freezed == onCancel
          ? _value.onCancel
          : onCancel // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$ConfirmStacDialogImplCopyWith<$Res>
    implements $ConfirmStacDialogCopyWith<$Res> {
  factory _$$ConfirmStacDialogImplCopyWith(_$ConfirmStacDialogImpl value,
          $Res Function(_$ConfirmStacDialogImpl) then) =
      __$$ConfirmStacDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String message,
      dynamic onConfirm,
      dynamic onCancel,
      String? confirmButtonText,
      String? cancelButtonText});
}

/// @nodoc
class __$$ConfirmStacDialogImplCopyWithImpl<$Res>
    extends _$ConfirmStacDialogCopyWithImpl<$Res, _$ConfirmStacDialogImpl>
    implements _$$ConfirmStacDialogImplCopyWith<$Res> {
  __$$ConfirmStacDialogImplCopyWithImpl(_$ConfirmStacDialogImpl _value,
      $Res Function(_$ConfirmStacDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmStacDialog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? onConfirm = freezed,
    Object? onCancel = freezed,
    Object? confirmButtonText = freezed,
    Object? cancelButtonText = freezed,
  }) {
    return _then(_$ConfirmStacDialogImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      onConfirm: freezed == onConfirm
          ? _value.onConfirm
          : onConfirm // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onCancel: freezed == onCancel
          ? _value.onCancel
          : onCancel // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$ConfirmStacDialogImpl implements _ConfirmStacDialog {
  const _$ConfirmStacDialogImpl(
      {required this.title,
      required this.message,
      required this.onConfirm,
      this.onCancel,
      this.confirmButtonText,
      this.cancelButtonText});

  factory _$ConfirmStacDialogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmStacDialogImplFromJson(json);

  @override
  final String title;
  @override
  final String message;
  @override
  final dynamic onConfirm;
  @override
  final dynamic onCancel;
  @override
  final String? confirmButtonText;
  @override
  final String? cancelButtonText;

  @override
  String toString() {
    return 'ConfirmStacDialog(title: $title, message: $message, onConfirm: $onConfirm, onCancel: $onCancel, confirmButtonText: $confirmButtonText, cancelButtonText: $cancelButtonText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmStacDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.onConfirm, onConfirm) &&
            const DeepCollectionEquality().equals(other.onCancel, onCancel) &&
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
      const DeepCollectionEquality().hash(onConfirm),
      const DeepCollectionEquality().hash(onCancel),
      confirmButtonText,
      cancelButtonText);

  /// Create a copy of ConfirmStacDialog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmStacDialogImplCopyWith<_$ConfirmStacDialogImpl> get copyWith =>
      __$$ConfirmStacDialogImplCopyWithImpl<_$ConfirmStacDialogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmStacDialogImplToJson(
      this,
    );
  }
}

abstract class _ConfirmStacDialog implements ConfirmStacDialog {
  const factory _ConfirmStacDialog(
      {required final String title,
      required final String message,
      required final dynamic onConfirm,
      final dynamic onCancel,
      final String? confirmButtonText,
      final String? cancelButtonText}) = _$ConfirmStacDialogImpl;

  factory _ConfirmStacDialog.fromJson(Map<String, dynamic> json) =
      _$ConfirmStacDialogImpl.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  dynamic get onConfirm;
  @override
  dynamic get onCancel;
  @override
  String? get confirmButtonText;
  @override
  String? get cancelButtonText;

  /// Create a copy of ConfirmStacDialog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmStacDialogImplCopyWith<_$ConfirmStacDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
