import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/stac_parser/data_classes/actions/show_dialog_action.dart';

class OpenDialogParser extends StacActionParser<ShowDialogAction> {
  @override
  String get actionType => 'openDialog';

  @override
  ShowDialogAction getModel(Map<String, dynamic> json) => ShowDialogAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, ShowDialogAction model) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (context) => Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
