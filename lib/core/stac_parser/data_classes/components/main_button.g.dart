// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainButtonImpl _$$MainButtonImplFromJson(Map<String, dynamic> json) =>
    _$MainButtonImpl(
      title: json['title'] as String,
      route: json['route'] as String,
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      isBold: json['isBold'] as bool?,
      isEnabled: json['isEnabled'] as bool?,
      paddingHorizontal: (json['paddingHorizontal'] as num?)?.toDouble(),
      paddingVertical: (json['paddingVertical'] as num?)?.toDouble(),
      borderRadius: (json['borderRadius'] as num?)?.toDouble(),
      borderWidth: (json['borderWidth'] as num?)?.toDouble(),
      elevation: (json['elevation'] as num?)?.toDouble(),
      textColor: json['textColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      borderColor: json['borderColor'] as String?,
      onPressed: json['onPressed'] == null
          ? null
          : OnPressedAction.fromJson(json['onPressed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainButtonImplToJson(_$MainButtonImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'route': instance.route,
      'fontSize': instance.fontSize,
      'isBold': instance.isBold,
      'isEnabled': instance.isEnabled,
      'paddingHorizontal': instance.paddingHorizontal,
      'paddingVertical': instance.paddingVertical,
      'borderRadius': instance.borderRadius,
      'borderWidth': instance.borderWidth,
      'elevation': instance.elevation,
      'textColor': instance.textColor,
      'backgroundColor': instance.backgroundColor,
      'borderColor': instance.borderColor,
      'onPressed': instance.onPressed,
    };

_$OnPressedActionImpl _$$OnPressedActionImplFromJson(
        Map<String, dynamic> json) =>
    _$OnPressedActionImpl(
      actionType: json['actionType'] as String,
      parameters: json['parameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$OnPressedActionImplToJson(
        _$OnPressedActionImpl instance) =>
    <String, dynamic>{
      'actionType': instance.actionType,
      'parameters': instance.parameters,
    };
