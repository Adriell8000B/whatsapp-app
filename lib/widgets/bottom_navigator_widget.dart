import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class BottomNavigatorWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigatorWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      height: 70,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

      destinations: const [
        NavigationDestination(
          icon: Icon(TablerIcons.message),
          selectedIcon: Icon(TablerIcons.message_filled),
          label: 'Chats',
        ),
        NavigationDestination(
          icon: Icon(TablerIcons.progress_check),
          label: 'Updates',
        ),
        NavigationDestination(
          icon: Icon(TablerIcons.users_group),
          label: 'Communities',
        ),
        NavigationDestination(
          icon: Icon(TablerIcons.phone_call),
          label: 'Calls',
        ),
      ],
    );
  }
}
