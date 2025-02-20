import 'dart:async';

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/routing/route_management.dart';
import 'package:stac_test/core/stac_parser/data_classes/actions/route_action.dart';

class RouteActionParser extends StacActionParser<RouteAction> {
  @override
  String get actionType => 'route';

  @override
  RouteAction getModel(Map<String, dynamic> json) => RouteAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, RouteAction model) {
    switch (model.navigationStyle) {
      case 'pushNamed':
        RouteManagement.instance.pushNamed(model.routeName);
        break;
      case 'pushReplacementNamed':
        RouteManagement.instance.pushReplacementNamed(model.routeName);
        break;
      case 'pushAndRemoveUntil':
        RouteManagement.instance.pushNamedAndRemoveUntil(model.routeName, model.removeUntilRoute ?? '/');
        break;
      case 'popUntil':
        RouteManagement.instance.popUntil(model.routeName);
        break;
      case 'pop':
        if (RouteManagement.instance.canPop()) {
          RouteManagement.instance.pop();
        }
        break;
      case 'popAndPushNamed':
        if (RouteManagement.instance.canPop()) {
          RouteManagement.instance.popAndPushNamed(model.routeName);
        } else {
          RouteManagement.instance.pushNamed(model.routeName);
        }
        break;
    }
  }
}
