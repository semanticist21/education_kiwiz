import 'package:flutter/material.dart';
import 'login_button_builder.dart';

class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({
    super.key,
    required this.icon,
    required this.iColor,
    required this.bColor,
    required this.tColor,
    required this.callback,
    required this.buttonText,
  });

  final IconData icon;

  final Color iColor;
  final Color bColor;
  final Color tColor;

  final String buttonText;
  final VoidCallback callback;

  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> {
  @override
  Widget build(BuildContext context) {
    return LoginButtonBuilder(
      icon: widget.icon,
      iconColor: widget.iColor,
      // image: SvgPicture.asset('assets/svgs/kakao.svg'),
      backgroundColor: widget.bColor,
      textColor: widget.tColor,
      text: widget.buttonText,
      onPressed: widget.callback,
    );
  }
}
