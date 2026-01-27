import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? actionIcon; // The optional icon (e.g., Search)
  final VoidCallback? onActionPressed;
  final Widget menuWidget; // Your PopMenuWidget

  const AppbarWidget({
    super.key,
    required this.title,
    required this.menuWidget,
    this.actionIcon,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        // This is a "collection if" - it only adds the widget if actionIcon is not null
        if (actionIcon != null)
          IconButton(
            icon: Icon(actionIcon),
            onPressed: onActionPressed ?? () {},
            color: Colors.grey,
          ),

        menuWidget,
        const SizedBox(width: 5),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
