import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
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
  Size get preferredSize => Size.fromHeight(bottom == null ? 40.0 : 80.0);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AppBar(
      title: Text(
        title,
        style: theme.textTheme.displayLarge,
      ),
      backgroundColor: theme.colorScheme.primary,
      centerTitle: true,
      actions: actions,
      bottom: bottom,
      surfaceTintColor: Colors.transparent,
    );
  }
}
