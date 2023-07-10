import 'package:education_kiwiz/src/const.dart';
import 'package:education_kiwiz/src/router/routes.dart';
import 'package:education_kiwiz/src/view/home_view.dart';
import 'package:education_kiwiz/src/view/signin_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'router/page_builder.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: APP_NAME,
      onGenerateRoute: (settings) => getPageBuilder(settings),
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => routes[LOGIN_ADDR]!(context)),
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> snapshot) =>
                snapshot.hasData ? HomeView() : SignInView()),
      ),
    );
  }
}
