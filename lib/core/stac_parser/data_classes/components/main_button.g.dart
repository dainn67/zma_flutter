// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainButtonImpl _$$MainButtonImplFromJson(Map<String, dynamic> json) =>
    _$MainButtonImpl(
      title: json['title'] as String,
      onPressed: json['onPressed'] as Map<String, dynamic>,
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

Map<String, dynamic> _$$MainButtonImplToJson(_$MainButtonImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'onPressed': instance.onPressed,
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
