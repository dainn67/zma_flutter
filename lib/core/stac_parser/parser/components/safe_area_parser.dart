import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/stac_parser/data_classes/components/safe_area_stac.dart' as model;

class SafeAreaStacParser extends StacParser<model.SafeAreaStac> {
  @override
  String get type => 'safeArea1';

  @override
  model.SafeAreaStac getModel(Map<String, dynamic> json) => model.SafeAreaStac.fromJson(json);

  @override
  Widget parse(BuildContext context, model.SafeAreaStac model) {
    return SafeArea(
      left: model.left ?? true,
      top: model.top ?? true,
      right: model.right ?? true,
      bottom: model.bottom ?? true,
      maintainBottomViewPadding: model.maintainBottomViewPadding ?? false,
      minimum: model.minimum != null ? EdgeInsets.all(model.minimum!) : EdgeInsets.zero,
      child: Stac.fromJson(model.child, context) ?? const SizedBox.shrink(),
    );
  }
} 