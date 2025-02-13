import 'package:flutter/material.dart';
import 'package:sabak_23_chat_app/theme/text_styles.dart';
import 'package:sabak_23_chat_app/widgets/send_message.dart';
import 'package:sabak_23_chat_app/widgets/user_message.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('John Doe',
                style: TextStyles.bodyMedium
                    .copyWith(fontWeight: FontWeight.bold)),
            Text('Online', style: TextStyles.bodySmall),
          ],
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: UserMessage(),
            );
          }),
      bottomNavigationBar: SendMessage(),
    );
  }
}
