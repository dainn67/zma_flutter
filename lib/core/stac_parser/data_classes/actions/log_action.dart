// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_action.freezed.dart';
part 'log_action.g.dart';

@freezed
class LogAction with _$LogAction {
  const factory LogAction({
    required String message,
    String? type,
  }) = _LogAction;

  factory LogAction.fromJson(Map<String, dynamic> json) => _$LogActionFromJson(json);
}
