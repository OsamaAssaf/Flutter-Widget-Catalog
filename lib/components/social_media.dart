// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'components.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key, required this.url, required this.icon})
      : super(key: key);

  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: theme.colorScheme.primary,
        child: IconButton(
          onPressed: () {
            Components.openUrl(url, context);
          },
          icon: FaIcon(icon),
        ),
      ),
    );
  }
}
