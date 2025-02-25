// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stac_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteStacActionImpl _$$RouteStacActionImplFromJson(
        Map<String, dynamic> json) =>
    _$RouteStacActionImpl(
      routeName: json['routeName'] as String,
      navigationStyle: json['navigationStyle'] as String,
      params: json['params'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RouteStacActionImplToJson(
        _$RouteStacActionImpl instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'navigationStyle': instance.navigationStyle,
      'params': instance.params,
    };
