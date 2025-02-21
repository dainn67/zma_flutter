// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_button.freezed.dart';
part 'main_button.g.dart';

@freezed
class MainButton with _$MainButton {
  const factory MainButton({
    required String title,
    required Map<String, dynamic> onPressed,
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
  }) = _MainButton;

  factory MainButton.fromJson(Map<String, dynamic> json) =>
      _$MainButtonFromJson(json);
}
