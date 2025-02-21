// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteActionImpl _$$RouteActionImplFromJson(Map<String, dynamic> json) =>
    _$RouteActionImpl(
      route: json['route'] as String,
      navigationStyle: json['navigationStyle'] as String,
      routeName: json['routeName'] as String,
      removeUntilRoute: json['removeUntilRoute'] as String?,
    );

Map<String, dynamic> _$$RouteActionImplToJson(_$RouteActionImpl instance) =>
    <String, dynamic>{
      'route': instance.route,
      'navigationStyle': instance.navigationStyle,
      'routeName': instance.routeName,
      'removeUntilRoute': instance.removeUntilRoute,
    };
