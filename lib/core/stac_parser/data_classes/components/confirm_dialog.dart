import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_dialog.freezed.dart';
part 'confirm_dialog.g.dart';

@freezed
class ConfirmDialog with _$ConfirmDialog {
  const factory ConfirmDialog({
    required String title,
    required String message,
    required Map<String, dynamic> onConfirm,
    Map<String, dynamic>? onCancel,
    String? confirmButtonText,
    String? cancelButtonText,
  }) = _ConfirmDialog;

  factory ConfirmDialog.fromJson(Map<String, dynamic> json) => _$ConfirmDialogFromJson(json);
}
