import 'package:chap_application/pages/login_page.dart';
import 'package:chap_application/themes/text_styles.dart';
import 'package:chap_application/widgets/custom_button.dart';
import 'package:chap_application/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key, this.onButtonTap});

  final onButtonTap;
  void toLogin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.app_registration,
              color: Theme.of(context).primaryColor,
              size: 90,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Welcome to ChatApp!',
              style: TextStyles.textStyles16,
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              textObscure: false,
              textName: 'Email',
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              textObscure: true,
              textName: 'Password',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Sign up',
              onTap: onButtonTap,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyles.textStyles16,
                ),
                GestureDetector(
                  onTap: () => toLogin(context),
                  child: const Text(
                    'Log in!',
                    style: TextStyles.blueTextStyles16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
