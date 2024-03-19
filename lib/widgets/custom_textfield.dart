import 'package:chap_application/themes/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textObscure, required this.textName});

  final bool textObscure;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            style: TextStyles.textStyles16,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.tertiary)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary)),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
              hintText: textName,
            ),
            obscureText: textObscure,
          ),
        ),
      ],
    );
  }
}
