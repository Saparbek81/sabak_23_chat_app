import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sabak_23_chat_app/pages/chat_page.dart';
import 'package:sabak_23_chat_app/theme/text_styles.dart';
import 'package:sabak_23_chat_app/widgets/email_password_card.dart';
import 'package:sabak_23_chat_app/widgets/sign_in_button.dart';
import 'package:sabak_23_chat_app/widgets/with_platform_sign_in_button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController editingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signIn() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: editingController.text.trim(),
          password: passwordEditingController.text.trim());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          spacing: 20,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.headings,
            ),
            Text(
              'Sign in to continue',
              style: TextStyles.bodyMedium,
            ),
            UserEmailPasswordCard(
              labelText: 'Email',
              hintTextText: 'Enter your email',
            ),
            UserEmailPasswordCard(
              labelText: 'Password',
              hintTextText: 'Enter your password',
            ),
            SignInButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChatPage();
                }));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyles.bodySmall,
                ),
                Text(
                  "Sign Up",
                  style: TextStyles.bodySmall.copyWith(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Text('Or continue with'),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WithPlatformSignInButton(
                  text: 'Google',
                  image: 'assets/google.png',
                ),
                WithPlatformSignInButton(
                  text: 'Apple',
                  image: 'assets/apple.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
