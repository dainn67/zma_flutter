import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_stac_dialog.freezed.dart';
part 'confirm_stac_dialog.g.dart';

@freezed
class ConfirmStacDialog with _$ConfirmStacDialog {
  const factory ConfirmStacDialog({
    required String title,
    required String message,
    required Map<String, dynamic> onConfirm,
    Map<String, dynamic>? onCancel,
    String? confirmButtonText,
    String? cancelButtonText,
  }) = _ConfirmStacDialog;

  factory ConfirmStacDialog.fromJson(Map<String, dynamic> json) =>
      _$ConfirmStacDialogFromJson(json);
}
