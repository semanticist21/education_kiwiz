import 'package:education_kiwiz/src/components/login_button.dart';
import 'package:education_kiwiz/src/const.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../services/login_service.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final _loginService = LoginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 0.5,
                child: Image.asset(
                  APP_MAIN_IMG_PATH,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Text(
                APP_NAME,
              ),
              SizedBox(height: 10),
              Text('환영합니다.')
            ],
          )),
          Expanded(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginButton(
                    buttonType: Buttons.google,
                    callback: () async =>
                        await _loginService.signInWithGoogleAsync(),
                    buttonText: 'Sign in with Google'),
                LoginButton(
                    buttonType: Buttons.google,
                    callback: () async =>
                        await _loginService.signInWithGoogleAsync(),
                    buttonText: 'Sign in with Google'),
                LoginButton(
                    buttonType: Buttons.google,
                    callback: () async =>
                        await _loginService.signInWithGoogleAsync(),
                    buttonText: 'Sign in with Google'),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
