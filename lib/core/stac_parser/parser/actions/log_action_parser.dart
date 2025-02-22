import 'dart:async';

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/services/log_service.dart';
import 'package:stac_test/core/stac_parser/data_classes/actions/log_stac_action.dart';

class LogStacActionParser implements StacActionParser<LogStacAction> {
  @override
  String get actionType => 'log';

  @override
  LogStacAction getModel(Map<String, dynamic> json) => LogStacAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, LogStacAction model) {
    switch (model.logType) {
      case 'success':
        LogService.success(model.message);
        break;
      case 'error':
        LogService.error(model.message);
        break;
      case 'warning':
        LogService.warning(model.message);
        break;
      default:
        LogService.info(model.message);
    }
  }
}
