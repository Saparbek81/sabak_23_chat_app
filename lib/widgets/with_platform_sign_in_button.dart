import 'package:flutter/material.dart';

class WithPlatformSignInButton extends StatelessWidget {
  const WithPlatformSignInButton({
    super.key,
    required this.text,
    required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(165, 58),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: const BorderSide(color: Colors.grey), // Чек ара сызыгы
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image),
          const SizedBox(width: 8), // Боштук кошуу
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
