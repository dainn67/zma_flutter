// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_stac_dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmStacDialogImpl _$$ConfirmStacDialogImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmStacDialogImpl(
      title: json['title'] as String,
      message: json['message'] as String,
      onConfirm: json['onConfirm'] as Map<String, dynamic>,
      onCancel: json['onCancel'] as Map<String, dynamic>?,
      confirmButtonText: json['confirmButtonText'] as String?,
      cancelButtonText: json['cancelButtonText'] as String?,
    );

Map<String, dynamic> _$$ConfirmStacDialogImplToJson(
        _$ConfirmStacDialogImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'onConfirm': instance.onConfirm,
      'onCancel': instance.onCancel,
      'confirmButtonText': instance.confirmButtonText,
      'cancelButtonText': instance.cancelButtonText,
    };
