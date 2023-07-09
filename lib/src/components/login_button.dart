import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({
    super.key,
    required this.buttonType,
    required this.callback,
    required this.buttonText,
  });

  final Buttons buttonType;
  final String buttonText;
  final VoidCallback callback;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return SignInButton(
      widget.buttonType,
      mini: false,
      text: widget.buttonText,
      onPressed: widget.callback,
    );
  }
}
