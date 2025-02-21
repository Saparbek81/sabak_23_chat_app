import 'package:flutter/material.dart';
import 'package:sabak_23_chat_app/theme/text_styles.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(0, 56),
        backgroundColor: Color(0xff2563EB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: TextStyles.bodyMedium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
