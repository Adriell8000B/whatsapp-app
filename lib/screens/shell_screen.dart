import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls_screen.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/communities_screen.dart';
import 'package:whatsapp/screens/updates_screen.dart';
import 'package:whatsapp/widgets/bottom_navigator_widget.dart';

class ShellScreen extends StatefulWidget {
  const ShellScreen({super.key});

  @override
  State<ShellScreen> createState() => _ShellScreenState();
}

class _ShellScreenState extends State<ShellScreen> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    ChatScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];

  void navigate(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigatorWidget(
        currentIndex: currentIndex,
        onTap: navigate,
      ),
      body: IndexedStack(index: currentIndex, children: _pages),
    );
  }
}
