import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/appbar_widget.dart';
import 'package:whatsapp/widgets/pop_menu_widget.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Calls',
        menuWidget: PopMenuWidget(),
        actionIcon: Icons.search,
      ),
    );
  }
}
