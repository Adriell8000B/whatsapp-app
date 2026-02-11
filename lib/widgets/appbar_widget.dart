import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? actionIcon;
  final VoidCallback? onActionPressed;
  final Widget? menuWidget;

  const AppbarWidget({
    super.key,
    required this.title,
    this.menuWidget,
    this.actionIcon,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      titleSpacing: 20,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        if (actionIcon != null)
          IconButton(
            icon: Icon(actionIcon),
            onPressed: onActionPressed ?? () {},
            color: Colors.grey,
          ),

        if (menuWidget != null) menuWidget!,
        const SizedBox(width: 5),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
