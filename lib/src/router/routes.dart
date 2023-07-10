import 'package:education_kiwiz/src/view/login_view.dart';
import 'package:education_kiwiz/src/view/signin_view.dart';
import 'package:flutter/material.dart';

const String SIGNIN_ADDR = '/signin';
const String LOGIN_ADDR = '/login';

final routes = {
  SIGNIN_ADDR: (BuildContext context) => SignInView(),
  LOGIN_ADDR: (BuildContext context) => LogInView(),
};
