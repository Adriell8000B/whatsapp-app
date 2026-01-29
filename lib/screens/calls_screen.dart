import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
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
      // --- THE BODY SECTION ---
      body: ListView(
        children: [
          // 1. Create Call Link Section
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF25D366),
              child: Icon(Icons.link, color: Colors.white),
            ),
            title: const Text(
              'Create call link',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Share a link for your WhatsApp call'),
            onTap: () {},
          ),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Recent',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),

          // 2. Recent Calls List
          _buildCallItem(
            name: 'John Doe',
            time: 'Yesterday, 10:45 PM',
            isMissed: true,
            isIncoming: true,
            icon: TablerIcons.phone,
          ),
          _buildCallItem(
            name: 'Jane Smith',
            time: 'January 25, 12:15 PM',
            isMissed: false,
            isIncoming: false,
            icon: TablerIcons.video,
          ),
        ],
      ),
      // --- YOUR FAB ---
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: const Color(0xFF25D366),
        child: const Icon(TablerIcons.phone_plus, color: Colors.white),
      ),
    );
  }

  // Helper method to keep code clean
  Widget _buildCallItem({
    required String name,
    required String time,
    required bool isMissed,
    required bool isIncoming,
    required IconData icon,
  }) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: isMissed ? Colors.red : Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            isIncoming ? TablerIcons.phone_call : TablerIcons.phone_done,
            size: 16,
            color: isMissed ? Colors.red : Colors.green,
          ),
          const SizedBox(width: 4),
          Text(time),
        ],
      ),
      trailing: Icon(icon, color: const Color(0xFF075E54)),
      onTap: () {},
    );
  }
}