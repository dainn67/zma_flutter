// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomButtonImpl _$$CustomButtonImplFromJson(Map<String, dynamic> json) =>
    _$CustomButtonImpl(
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
    );

Map<String, dynamic> _$$CustomButtonImplToJson(_$CustomButtonImpl instance) =>
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
    };
