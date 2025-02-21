// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_action.freezed.dart';
part 'route_action.g.dart';

@freezed
class RouteAction with _$RouteAction {
  const factory RouteAction({
    required String route,
    required String navigationStyle,
    required String routeName,
    String? removeUntilRoute,
  }) = _RouteAction;

  factory RouteAction.fromJson(Map<String, dynamic> json) =>
      _$RouteActionFromJson(json);
}
