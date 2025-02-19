// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'safe_area.freezed.dart';
part 'safe_area.g.dart';

@freezed
class SafeArea with _$SafeArea {
  const factory SafeArea({
    required Map<String, dynamic> child,
    bool? left,
    bool? top,
    bool? right,
    bool? bottom,
    bool? maintainBottomViewPadding,
    double? minimum,
  }) = _SafeArea;

  factory SafeArea.fromJson(Map<String, dynamic> json) =>
      _$SafeAreaFromJson(json);
}