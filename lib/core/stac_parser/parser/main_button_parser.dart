import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/core/stac_parser/class/main_button.dart';

class MainButtonParser extends StacParser<MainButton> {
  @override
  MainButton getModel(Map<String, dynamic> json) =>
      MainButton.fromJson(json);

  @override
  String get type => 'mainButton';

  @override
  Widget parse(BuildContext context, MainButton model) {
    return ElevatedButton(
      onPressed: model.isEnabled == false
          ? null
          : () => RouteManagement.instance.pushNamed(model.route),
      style: ElevatedButton.styleFrom(
        backgroundColor: model.backgroundColor != null
            ? Color(int.parse(model.backgroundColor!))
            : null,
        foregroundColor:
            model.textColor != null ? Color(int.parse(model.textColor!)) : null,
        padding: EdgeInsets.symmetric(
          horizontal: model.paddingHorizontal ?? 16.0,
          vertical: model.paddingVertical ?? 8.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(model.borderRadius ?? 8.0),
          side: model.borderColor != null
              ? BorderSide(
                  color: Color(int.parse(model.borderColor!)),
                  width: model.borderWidth ?? 1.0,
                )
              : BorderSide.none,
        ),
        elevation: model.elevation ?? 2.0,
        textStyle: TextStyle(
          fontSize: model.fontSize ?? 16.0,
          fontWeight:
              model.isBold == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      child: Text(
        model.title,
        style: TextStyle(
          fontSize: model.fontSize ?? 16.0,
          fontWeight:
              model.isBold == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
