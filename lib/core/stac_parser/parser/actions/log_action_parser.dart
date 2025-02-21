import 'dart:async';

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/services/log_service.dart';
import 'package:stac_test/core/stac_parser/data_classes/actions/log_action.dart';

class LogActionParser implements StacActionParser<LogAction> {
  @override
  String get actionType => 'log';

  @override
  LogAction getModel(Map<String, dynamic> json) => LogAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, LogAction model) {
    switch (model.type) {
      case 'success':
        LogService.success(model.message);
        break;
      case 'error':
        LogService.error(model.message);
        break;
      default:
        LogService.info(model.message);
    }
  }
}