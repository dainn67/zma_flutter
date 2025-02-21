import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/stac_parser/data_classes/components/safe_area.dart' as model;

class SafeAreaParser extends StacParser<model.SafeArea> {
  @override
  String get type => 'safeArea1';

  @override
  model.SafeArea getModel(Map<String, dynamic> json) => model.SafeArea.fromJson(json);

  @override
  Widget parse(BuildContext context, model.SafeArea model) {
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