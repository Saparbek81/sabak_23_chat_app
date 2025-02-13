import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(
          BorderSide(
            color: Color(0xffE5E7EB),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Image.asset('assets/smile.png'),
            Expanded(
                child: Container(
              height: 42,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type a message....',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9999),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            )),
            Image.asset('assets/send.png'),
          ],
        ),
      ),
    );
  }
}
