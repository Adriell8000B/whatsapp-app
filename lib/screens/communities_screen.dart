import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/appbar_widget.dart';
import 'package:whatsapp/widgets/pop_menu_widget.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Communities', menuWidget: PopMenuWidget()),
      body: ListView(
        children: [
          const SizedBox(height: 12,),
          _buildNewCommunityTile(),
          const SizedBox(height: 12,),

          const Divider(thickness: 0.1, color: Color(0xFFF2F2F2)),

          _buildCommunityItem(
            name: 'Flutter Developers',
            subtitle: 'Announcements',
            icon: Icons.groups_rounded,
          ),

          _buildCommunityItem(
            name: 'Local Neighborhood',
            subtitle: 'Security Updates',
            icon: Icons.home_work_rounded,
          ),
        ],
      ),
    );
  }

  Widget _buildNewCommunityTile() {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey[500],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.groups_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF008069),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      title: const Text(
        'New Community',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildCommunityItem({
    required String name,
    required String subtitle,
    required IconData icon,
  }) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
