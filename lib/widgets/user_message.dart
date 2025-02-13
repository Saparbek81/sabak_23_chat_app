import 'package:flutter/material.dart';
import 'package:sabak_23_chat_app/theme/text_styles.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      constraints: BoxConstraints(
        minWidth: 163.16,
        maxWidth: 250,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xffE5E7EB),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey, how are you?',
                style: TextStyles.bodyMedium
                    .copyWith(fontWeight: FontWeight.w600)),
            Text('09:55 AM', style: TextStyles.label),
          ],
        ),
      ),
    );
  }
}
