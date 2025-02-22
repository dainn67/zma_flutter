import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_test/core/stac_parser/data_classes/components/confirm_stac_dialog.dart';

import '../../../../ui/components/main_button.dart';

class ConfirmStacDialogParser extends StacParser<ConfirmStacDialog> {
  @override
  ConfirmStacDialog getModel(Map<String, dynamic> json) => ConfirmStacDialog.fromJson(json);

  @override
  String get type => 'confirmDialog';

  @override
  Widget parse(BuildContext context, ConfirmStacDialog model) {
    return Center(
      child: Wrap(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  model.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  model.message,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: MainButton(
                      title: model.cancelButtonText ?? 'Cancel',
                      paddingVertical: 16,
                      borderRadius: 16,
                      onPressed: () {},
                    )),
                    const SizedBox(width: 16),
                    Expanded(
                        child: MainButton(
                      title: model.confirmButtonText ?? 'Confirm',
                      paddingVertical: 16,
                      borderRadius: 16,
                      onPressed: () {},
                    )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
