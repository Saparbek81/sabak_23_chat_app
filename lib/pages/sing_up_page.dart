import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sabak_23_chat_app/pages/chat_page.dart';
import 'package:sabak_23_chat_app/pages/sing_in_page.dart';
import 'package:sabak_23_chat_app/theme/text_styles.dart';
import 'package:sabak_23_chat_app/widgets/email_password_card.dart';
import 'package:sabak_23_chat_app/widgets/sign_in_button.dart';
import 'package:sabak_23_chat_app/widgets/with_platform_sign_in_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController editingController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signup() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: editingController.text.trim(),
          password: passwordController.text.trim());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Column(
          children: [
            Text('Регистрация болгон экенсиз, логин менен кириниз'),
            ElevatedButton(
                onPressed: () {}, child: Text('логин барагына отунуз'))
          ],
        ),
      ));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
      print('Login failed: ${e.toString()}');
    }
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
              'Sign up to continue',
              style: TextStyles.bodyMedium,
            ),
            UserEmailPasswordCard(
              controller: editingController,
              labelText: 'Email',
              hintTextText: 'Enter your email',
            ),
            UserEmailPasswordCard(
              controller: passwordController,
              labelText: 'Password',
              hintTextText: 'Enter your password',
            ),
            SignInButton(text: 'Sign Up', onPressed: signup),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyles.bodySmall,
                ),
                Text(
                  "Sign In",
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
