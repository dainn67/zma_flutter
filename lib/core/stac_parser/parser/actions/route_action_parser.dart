import 'dart:async';

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/stac_parser/data_classes/actions/route_stac_action.dart';

class RouteActionParser implements StacActionParser<RouteStacAction> {
  @override
  String get actionType => 'routing';

  @override
  RouteStacAction getModel(Map<String, dynamic> json) => RouteStacAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, RouteStacAction model) {
    // Remove leading slash if present for named routes
    final routeName = model.routeName.startsWith('/') ? model.routeName.substring(1) : model.routeName;

    switch (model.navigationStyle) {
      case 'pushNamed':
        try {
          context.pushNamed(routeName, extra: model.params);
        } catch (e) {
          // Fallback to path-based navigation if named route fails
          context.push(model.routeName, extra: model.params);
        }
        break;
      case 'pushReplacementNamed':
        try {
          context.replaceNamed(routeName, extra: model.params);
        } catch (e) {
          // Fallback to path-based navigation if named route fails
          context.replace(model.routeName, extra: model.params);
        }
        break;
      case 'pushAndRemoveUntil':
        context.go(model.routeName, extra: model.params);
        break;
      case 'popAndPushNamed':
        try {
          context.pushReplacementNamed(routeName, extra: model.params);
        } catch (e) {
          context.replace(model.routeName, extra: model.params);
        }
        break;
      case 'pop':
        context.pop();
        break;
      case 'popUntil':
        context.pop();
        break;
      case 'popAll':
        context.go('/');
        break;
      default:
        throw UnimplementedError('Navigation style "${model.navigationStyle}" is not implemented');
    }
  }
}
