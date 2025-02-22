// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safe_area_stac.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SafeAreaImpl _$$SafeAreaImplFromJson(Map<String, dynamic> json) =>
    _$SafeAreaImpl(
      child: json['child'] as Map<String, dynamic>,
      left: json['left'] as bool?,
      top: json['top'] as bool?,
      right: json['right'] as bool?,
      bottom: json['bottom'] as bool?,
      maintainBottomViewPadding: json['maintainBottomViewPadding'] as bool?,
      minimum: (json['minimum'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SafeAreaImplToJson(_$SafeAreaImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'maintainBottomViewPadding': instance.maintainBottomViewPadding,
      'minimum': instance.minimum,
    };
