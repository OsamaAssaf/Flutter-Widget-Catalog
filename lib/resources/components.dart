import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Components {
  static Future<void> openUrl(String url, BuildContext context) async {
    try {
      Uri uri = Uri.parse(url);
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Something wrong, try again.',
            ),
          ),
        );
      }
    }
  }
}
