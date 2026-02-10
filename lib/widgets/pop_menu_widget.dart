import 'package:flutter/material.dart';

class PopMenuWidget extends StatelessWidget {
  const PopMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      iconColor: Colors.grey,
      offset: const Offset(0, 50),
      itemBuilder: (context) => [
        'New group',
        'New community',
        'Broadcast lists',
        'Linked devices',
        'Starred',
        'Discover business',
        'Payments',
        'Read all',
        'Settings',
      ].map((choice) => PopupMenuItem(
        value: choice,
        child: Text(
          choice, 
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      )).toList(),
    );
  }
}