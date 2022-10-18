import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../res/theme.dart';
import 'components.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key,required this.url,required this.icon}) : super(key: key);

  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: CustomTheme.primaryColor,
        child: IconButton(
          onPressed: () {
            Components.openUrl(url, context);
          },
          icon:  FaIcon(icon),
        ),
      ),
    );
  }
}
