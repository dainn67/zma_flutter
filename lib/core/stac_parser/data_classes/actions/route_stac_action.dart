// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_stac_action.freezed.dart';
part 'route_stac_action.g.dart';

@freezed
class RouteStacAction with _$RouteStacAction {
  const factory RouteStacAction({
    required String route,
    required String navigationStyle,
    required String routeName,
    String? removeUntilRoute,
  }) = _RouteStacAction;

  factory RouteStacAction.fromJson(Map<String, dynamic> json) =>
      _$RouteStacActionFromJson(json);
}
