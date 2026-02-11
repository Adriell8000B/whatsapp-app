import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:whatsapp/widgets/appbar_widget.dart';
import 'package:whatsapp/widgets/settings_bubble_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Settings', actionIcon: TablerIcons.search),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsBubbleWidget(
              icon: TablerIcons.key,
              title: 'Account',
              subtitle: 'Security notifications, change number',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.lock,
              title: 'Privacy',
              subtitle: 'Block contacts, disappearing messages',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.face_id,
              title: 'Avatar',
              subtitle: 'Create, edit, profile photo',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.list,
              title: 'Lists',
              subtitle: 'Manage people and groups',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.message,
              title: 'Chats',
              subtitle: 'Theme, wallpapers, chat history',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.broadcast,
              title: 'Broadcasts',
              subtitle: 'Manage lists and send broadcasts',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.notification,
              title: 'Notifications',
              subtitle: 'Message, group & call tones',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.database,
              title: 'Storage and data',
              subtitle: 'Network usage, auto-download',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.accessible,
              title: 'Accessibility',
              subtitle: 'Increase contrast, animation',
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.language,
              title: 'App language',
              subtitle: "English (device's language)",
            ),
            SettingsBubbleWidget(
              icon: TablerIcons.help,
              title: 'Help and feedback',
              subtitle: 'Help center, contact us, privacy policy',
            ),
          ],
        ),
      ),
    );
  }
}
