import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AntsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AntsAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.forceAsHome = false,
  });

  final String title;

  final List<Widget> actions;
  final bool forceAsHome;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canPop = Navigator.of(context).canPop() && !forceAsHome;
    return AppBar(
      // backgroundColor: theme.scaffoldBackgroundColor,
      // surfaceTintColor: theme.scaffoldBackgroundColor,
      // surfaceTintColor: theme.colorScheme.primary,
      leading: canPop
          ? IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            )
          : null,
      actions: actions,
      title: Text(title, style: theme.textTheme.headlineMedium),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
