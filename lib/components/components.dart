
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Components{
  static Future<void> openUrl(String url,BuildContext context)async{
    try {
      Uri uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        throw 'Could not launch $url';
      }
    } catch (_) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Something wrong, try again.')));
    }
  }
}