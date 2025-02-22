// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_stac_button.freezed.dart';
part 'main_stac_button.g.dart';

@freezed
class MainStacButton with _$MainStacButton {
  const factory MainStacButton({
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
  }) = _MainStacButton;

  factory MainStacButton.fromJson(Map<String, dynamic> json) =>
      _$MainStacButtonFromJson(json);
}
