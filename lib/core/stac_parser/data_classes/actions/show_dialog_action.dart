// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_dialog_action.freezed.dart';
part 'show_dialog_action.g.dart';

@freezed
class ShowDialogAction with _$ShowDialogAction {
  const factory ShowDialogAction({
    required Map<String, dynamic> child,
  }) = _ShowDialogAction;

  factory ShowDialogAction.fromJson(Map<String, dynamic> json) => _$ShowDialogActionFromJson(json);
}
