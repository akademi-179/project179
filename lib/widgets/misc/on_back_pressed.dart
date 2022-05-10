import 'package:flutter/material.dart';

class OnBackPressed {
  OnBackPressed();

  static Future<bool> onBackPressed(final BuildContext context, final title,
          final content, final actionLeft, final actionRight) async =>
      (await showDialog(
          context: context,
          builder: (final context) => AlertDialog(
                title: Text(title),
                content: Text(content),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text(actionLeft)),
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text(actionRight)),
                ],
              )));
}
