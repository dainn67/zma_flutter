// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_stac_action.freezed.dart';
part 'log_stac_action.g.dart';

@freezed
class LogStacAction with _$LogStacAction {
  const factory LogStacAction({
    required String message,
    String? logType,
  }) = _LogStacAction;

  factory LogStacAction.fromJson(Map<String, dynamic> json) => _$LogStacActionFromJson(json);
}
