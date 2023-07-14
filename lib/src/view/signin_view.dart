import 'package:education_kiwiz/src/components/custom_login_button.dart';
import 'package:education_kiwiz/src/components/login_button.dart';
import 'package:education_kiwiz/src/const.dart';
import 'package:education_kiwiz/src/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../components/logo_icons.dart';
import '../services/login_service.dart';
import '../styles.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});
  final _loginService = LoginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FractionallySizedBox(
                      widthFactor: 0.35, child: Image.asset(APP_MAIN_IMG_PATH)),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign Up', style: TextStyles.LoginMainHeader),
                    Text('소셜 아이디로 편하게 가입하세요.', style: TextStyles.LoginSub),
                    SizedBox(height: 30),
                    LoginButton(
                        buttonType: Buttons.google,
                        callback: () async =>
                            await _loginService.logInWithGoogleAsync(),
                        buttonText: '구글로 가입하기'),
                    CustomLoginButton(
                        icon: LogoIcons.kakao,
                        iColor: KAKAO_ICOLOR,
                        bColor: KAKAO_BCOLOR,
                        tColor: PRIMARY_TXT_COLOR,
                        callback: () async =>
                            await _loginService.logInWithGoogleAsync(),
                        buttonText: '카카오로 가입하기'),
                    CustomLoginButton(
                        icon: LogoIcons.naver,
                        iColor: NAVER_ICOLOR,
                        bColor: NAVER_BCOLOR,
                        tColor: SECONDARY_TXT_COLOR,
                        callback: () async =>
                            await _loginService.logInWithGoogleAsync(),
                        buttonText: '네이버로 가입하기'),
                    SizedBox(
                      height: 50,
                    ),
                    Text('이미 가입하셨나요?', style: TextStyles.LoginSub),
                    TextButton(
                        onPressed: () async =>
                            await Navigator.pushReplacementNamed(
                                context, LOGIN_ADDR),
                        child: Text(
                          '로그인 하기',
                          style: TextStyles.LoginTxtButton,
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
