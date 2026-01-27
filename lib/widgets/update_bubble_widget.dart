import 'package:flutter/material.dart';

class UpdateBubbleWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String timestamp;
  final bool isSeen;
  final bool isMyStatus;
  final VoidCallback? onTap;

  const UpdateBubbleWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.timestamp,
    this.isSeen = false,
    this.isMyStatus = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: _buildLeadingAvatar(),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(timestamp, style: TextStyle(color: Colors.grey.shade600)),
    );
  }

  Widget _buildLeadingAvatar() {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(2.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isMyStatus
                ? null
                : Border.all(
                    color: isSeen
                        ? const Color.fromARGB(128, 131, 131, 131)
                        : const Color(0xFF25D366),
                    width: 2.5,
                  ),
          ),
          child: CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        if (isMyStatus)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Color(0xFF25D366),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 18),
            ),
          ),
      ],
    );
  }
}
