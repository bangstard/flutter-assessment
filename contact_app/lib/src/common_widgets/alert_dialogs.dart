import 'dart:io';

import 'package:contact_app/src/common_widgets/action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const kDialogDefaultKey = Key('dialog-default-key');

/// Generic function to show a platform-aware Material or Cupertino dialog
Future<bool?> showAlertDialog({
  required BuildContext context,
  required String title,
  String? content,
  String? cancelActionText,
  String defaultActionText = 'OK',
}) async {
  if (kIsWeb || !Platform.isIOS) {
    return showDialog(
      context: context,
      barrierDismissible: cancelActionText != null,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: content != null ? Text(content) : null,
        actions: <Widget>[
          if (cancelActionText != null)
            TextButton(
              child: Text(cancelActionText),
              onPressed: () => Navigator.of(context).pop(false),
            ),
          TextButton(
            key: kDialogDefaultKey,
            child: Text(defaultActionText),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );
  }
  return showCupertinoDialog(
    context: context,
    barrierDismissible: cancelActionText != null,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: content != null ? Text(content) : null,
      actions: <Widget>[
        if (cancelActionText != null)
          CupertinoDialogAction(
            child: Text(cancelActionText),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        CupertinoDialogAction(
          key: kDialogDefaultKey,
          child: Text(defaultActionText),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    ),
  );
}

/// Generic function to show a platform-aware Material or Cupertino error dialog
Future<void> showExceptionAlertDialog({
  required BuildContext context,
  required String title,
  required dynamic exception,
}) =>
    showAlertDialog(
      context: context,
      title: title,
      content: exception.toString(),
      defaultActionText: 'OK',
    );

Future<void> showNotImplementedAlertDialog({required BuildContext context}) =>
    showAlertDialog(
      context: context,
      title: 'Not implemented',
    );

Future<void> dialogDeleteBuilder(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.fromLTRB(40, 25, 40, 15),
                    child: const Text(
                      'Are you sure you want to delete this contact?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
              const Divider(height: 0, color: Colors.grey),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    ActionButton(
                      title: 'Yes',
                      color: Colors.red,
                      action: () {},
                    ),
                    const VerticalDivider(color: Colors.grey, width: 0),
                    ActionButton(
                      title: 'No',
                      color: Theme.of(context).primaryColorDark,
                      action: () => context.pop(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
