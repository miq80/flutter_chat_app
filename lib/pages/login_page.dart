import 'package:chap_application/pages/register_page.dart';
import 'package:chap_application/themes/text_styles.dart';
import 'package:chap_application/widgets/custom_button.dart';
import 'package:chap_application/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void onButtonTap() {}
  void toRegistration(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
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
            //logo
            Icon(
              Icons.chat,
              size: 90,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            //welcome message
            const Text(
              'Welcome back!',
              style: TextStyles.textStyles16,
            ),
            const SizedBox(
              height: 30,
            ),
            // email
            const CustomTextField(
              textName: 'Email',
              textObscure: false,
            ),
            //password
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              textName: 'Password',
              textObscure: true,
            ),
            //login button
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Sign in',
              onTap: onButtonTap,
            ),
            //register
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'First time in this app? ',
                  style: TextStyles.textStyles16,
                ),
                GestureDetector(
                  onTap: () => toRegistration(context),
                  child: const Text(
                    'Register now!',
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
