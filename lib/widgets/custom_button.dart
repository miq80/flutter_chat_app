import 'package:chap_application/themes/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.blueGrey),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 146, vertical: 20),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyles.textStyles16,
      ),
    );
  }
}
