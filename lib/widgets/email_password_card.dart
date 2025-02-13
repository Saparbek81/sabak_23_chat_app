import 'package:flutter/material.dart';

class UserEmailPasswordCard extends StatelessWidget {
  const UserEmailPasswordCard({
    super.key,
    required this.labelText,
    required this.hintTextText,
  });
  final String labelText, hintTextText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              label: Text(labelText),
              hintText: hintTextText,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
