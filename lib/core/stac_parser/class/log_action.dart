import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'log_action.freezed.dart';
part 'log_action.g.dart';

@freezed
class LogAction with _$LogAction {
  const factory LogAction({
    required String message,
  }) = _LogAction;

  factory LogAction.fromJson(Map<String, dynamic> json) =>
      _$LogActionFromJson(json);
}
