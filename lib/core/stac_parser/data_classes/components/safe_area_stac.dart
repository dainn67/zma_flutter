// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'safe_area_stac.freezed.dart';
part 'safe_area_stac.g.dart';

@freezed
class SafeAreaStac with _$SafeAreaStac {
  const factory SafeAreaStac({
    required Map<String, dynamic> child,
    bool? left,
    bool? top,
    bool? right,
    bool? bottom,
    bool? maintainBottomViewPadding,
    double? minimum,
  }) = _SafeAreaStac;

  factory SafeAreaStac.fromJson(Map<String, dynamic> json) =>
      _$SafeAreaStacFromJson(json);
}
