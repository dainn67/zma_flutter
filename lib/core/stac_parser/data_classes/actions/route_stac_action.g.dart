// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stac_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteStacActionImpl _$$RouteStacActionImplFromJson(
        Map<String, dynamic> json) =>
    _$RouteStacActionImpl(
      route: json['route'] as String,
      navigationStyle: json['navigationStyle'] as String,
      routeName: json['routeName'] as String,
      removeUntilRoute: json['removeUntilRoute'] as String?,
    );

Map<String, dynamic> _$$RouteStacActionImplToJson(
        _$RouteStacActionImpl instance) =>
    <String, dynamic>{
      'route': instance.route,
      'navigationStyle': instance.navigationStyle,
      'routeName': instance.routeName,
      'removeUntilRoute': instance.removeUntilRoute,
    };
