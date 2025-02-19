import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_button.freezed.dart';
part 'custom_button.g.dart';

@freezed
class CustomButton with _$CustomButton {
  const factory CustomButton({
    required String title,
    required String route,
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
  }) = _CustomButton;

  factory CustomButton.fromJson(Map<String, dynamic> json) =>
      _$CustomButtonFromJson(json);
}
