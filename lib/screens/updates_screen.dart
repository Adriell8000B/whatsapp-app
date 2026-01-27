import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/appbar_widget.dart';
import 'package:whatsapp/widgets/pop_menu_widget.dart';
import 'package:whatsapp/widgets/update_bubble_widget.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Updates',
        menuWidget: PopMenuWidget(),
        actionIcon: Icons.search,
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text("Status"),
            ),
            UpdateBubbleWidget(
              imageUrl:
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.hERdi95N5TxAvS3O-q4qIgHaDt%3Fpid%3DApi&f=1&ipt=5ff4429c230df909a1f3ae88496d5a1126b0bea7db443648e721deb3544a662f&ipo=images",
              name: "Raccoon",
              timestamp: "6 minutes ago",
              isMyStatus: true,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 20, bottom: 4),
              child: Text("Recent Updates"),
            ),
            UpdateBubbleWidget(
              imageUrl:
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.hERdi95N5TxAvS3O-q4qIgHaDt%3Fpid%3DApi&f=1&ipt=5ff4429c230df909a1f3ae88496d5a1126b0bea7db443648e721deb3544a662f&ipo=images",
              name: "Zé Preto",
              timestamp: "12 minutes ago",
            ),
            UpdateBubbleWidget(
              imageUrl:
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.hERdi95N5TxAvS3O-q4qIgHaDt%3Fpid%3DApi&f=1&ipt=5ff4429c230df909a1f3ae88496d5a1126b0bea7db443648e721deb3544a662f&ipo=images",
              name: "Java",
              timestamp: "20 minutes ago",
            ),
            UpdateBubbleWidget(
              imageUrl:
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.hERdi95N5TxAvS3O-q4qIgHaDt%3Fpid%3DApi&f=1&ipt=5ff4429c230df909a1f3ae88496d5a1126b0bea7db443648e721deb3544a662f&ipo=images",
              name: "Cornos de elite",
              timestamp: "1 minute ago",
            ),
            UpdateBubbleWidget(
              imageUrl:
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.hERdi95N5TxAvS3O-q4qIgHaDt%3Fpid%3DApi&f=1&ipt=5ff4429c230df909a1f3ae88496d5a1126b0bea7db443648e721deb3544a662f&ipo=images",
              name: "Smzinho",
              timestamp: "7 minutes ago",
            ),
          ],
        ),
      ),
    );
  }
}
