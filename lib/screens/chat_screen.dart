import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/appbar_widget.dart';
import 'package:whatsapp/widgets/chat_bubble_widget.dart';
import 'package:whatsapp/widgets/pop_menu_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: "Whatsapp",
        menuWidget: PopMenuWidget(),
        actionIcon: Icons.camera_alt_outlined,
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Ask Meta AI or Search",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  prefixIcon: Icon(Icons.search, size: 20),
                  isDense: true,
                  filled: true,
                  fillColor: Color(0xFF23232e),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            ChatTile(
              name: 'Useless (You)',
              lastMessage: 'Hi mom!',
              hour: '19:31',
              imageURL:
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.AMCbQhjTOm5w0N6zNscCnAHaGL%3Fpid%3DApi&f=1&ipt=678a39a734edcd8c87dcec18feb6cbe3ff0b7233293b234f4cc25e5b5c65bb5a&ipo=images',
              notReadMessages: 0
            ),
            ChatTile(
                name: 'Java',
              lastMessage: 'I love OOP',
              hour: '19:31',
              imageURL:
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.AMCbQhjTOm5w0N6zNscCnAHaGL%3Fpid%3DApi&f=1&ipt=678a39a734edcd8c87dcec18feb6cbe3ff0b7233293b234f4cc25e5b5c65bb5a&ipo=images',
            ),
          ],
        ),
      ),
    );
  }
}
