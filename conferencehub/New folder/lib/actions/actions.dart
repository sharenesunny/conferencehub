import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';

Future externalLinks(BuildContext context) async {
  var confirmDialogResponse = await showDialog<bool>(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: const Text('You are about to leave the app'),
            content: const Text(
                'You are leaving our site and we cannot be held responsible for the content of external websites.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, false),
                child: const Text('Stay here'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, true),
                child: const Text('Continue'),
              ),
            ],
          );
        },
      ) ??
      false;
  if (confirmDialogResponse) {
    unawaited(
      () async {
        await launchURL('https://complianceunit.gov.bb/');
      }(),
    );
  } else {
    return;
  }
}
