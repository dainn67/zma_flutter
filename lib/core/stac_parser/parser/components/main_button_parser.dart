import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/stac_parser/data_classes/components/main_button.dart';

class MainButtonParser extends StacParser<MainButton> {
  @override
  MainButton getModel(Map<String, dynamic> json) => MainButton.fromJson(json);

  @override
  String get type => 'mainButton';

  @override
  Widget parse(BuildContext context, MainButton model) {
    return ElevatedButton(
      onPressed: model.isEnabled != false ? () => _handleOnPressedAction(context, model.onPressed) : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: model.backgroundColor != null ? Color(int.parse(model.backgroundColor!)) : null,
        foregroundColor: model.textColor != null ? Color(int.parse(model.textColor!)) : null,
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
    final actionMap = {
      'actionType': action.actionType,
      if (action.message != null) 'message': action.message,
      if (action.routeName != null) 'routeName': action.routeName,
      if (action.removeUntilRoute != null) 'removeUntilRoute': action.removeUntilRoute,
      if (action.navigationStyle != null) 'navigationStyle': action.navigationStyle,
    };

    // Use Stac's action execution system
    Stac.onCallFromJson(actionMap, context);
  }
}
