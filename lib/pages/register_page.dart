import 'package:chap_application/pages/login_page.dart';
import 'package:chap_application/themes/text_styles.dart';
import 'package:chap_application/widgets/custom_button.dart';
import 'package:chap_application/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUpUser(BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } catch (e) {
      // Handle any registration errors here
      print('Error during registration: $e');
    }
  }

  void toLogin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
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
              CustomTextField(
                textObscure: false,
                textName: 'Email',
                controller: emailController,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                textObscure: true,
                textName: 'Password',
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Sign up',
                onTap: () => signUpUser(context),
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
      ),
    );
  }
}
