import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/core/stac_parser/data_classes/components/main_button.dart';

class MainButtonParser extends StacParser<MainButton> {
  @override
  MainButton getModel(Map<String, dynamic> json) => MainButton.fromJson(json);

  @override
  String get type => 'mainButton';

  @override
  Widget parse(BuildContext context, MainButton model) {
    return ElevatedButton(
      onPressed: model.isEnabled != false && model.onPressed != null
          ? () => _handleOnPressedAction(context, model.onPressed!)
          : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: model.backgroundColor != null
            ? Color(int.parse(model.backgroundColor!))
            : null,
        foregroundColor: model.textColor != null
            ? Color(int.parse(model.textColor!))
            : null,
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
          fontWeight: model.isBold == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      child: Text(
        model.title,
        style: TextStyle(
          fontSize: model.fontSize ?? 16.0,
          fontWeight: model.isBold == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  void _handleOnPressedAction(BuildContext context, OnPressedAction action) {
    // Implement the logic to handle different action types
    switch (action.actionType) {
      case 'route':
        if (action.parameters != null && action.parameters!['route'] != null) {
          RouteManagement.instance.pushNamed(action.parameters!['route']);
        }
        break;
      // Add more cases for different action types as needed
      default:
        // Handle unknown action types
        break;
    }
  }
}
