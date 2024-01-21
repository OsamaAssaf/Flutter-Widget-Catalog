import 'package:flutter/material.dart';

import '../../main.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
  });

  final String title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize => Size.fromHeight(bottom == null ? 40.0 : 90.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: theme.textTheme.displayLarge,
      ),
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.background,
      centerTitle: true,
      actions: actions,
      bottom: bottom,
      surfaceTintColor: Colors.transparent,
    );
  }
}
