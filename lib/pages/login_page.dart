import 'package:chap_application/pages/register_page.dart';
import 'package:chap_application/themes/text_styles.dart';
import 'package:chap_application/widgets/custom_button.dart';
import 'package:chap_application/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser(BuildContext context) async {
    //try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    print('Succesfully logged in!');
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => ),
    //   );
    // } catch (e) {
    //   // Handle any registration errors here
    //   print('Error during registration: $e');
    // }
  }

  void navigateToRegistrationPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RegisterPage(),
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
            CustomTextField(
              textName: 'Email',
              textObscure: false,
              controller: emailController,
            ),
            //password
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              textName: 'Password',
              textObscure: true,
              controller: passwordController,
            ),
            //login button
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Sign in',
              onTap: () => signInUser(context),
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
                  onTap: () => navigateToRegistrationPage(context),
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
