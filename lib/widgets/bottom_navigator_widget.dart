import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedFontSize: 12,
      enableFeedback: false,
      selectedLabelStyle: TextStyle(height: 2.5),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.message),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.progress_check),
          label: 'Updates',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(TablerIcons.users_group),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(TablerIcons.phone_call),
          label: 'Calls',
        ),
      ],
    );
  }
}
