import 'package:education_kiwiz/src/const.dart';
import 'package:education_kiwiz/src/view/home_view.dart';
import 'package:education_kiwiz/src/view/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      theme: ThemeData.light(),
      title: APP_NAME,
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> snapshot) =>
                snapshot.hasData ? HomeView() : LoginView()),
      ),
    );
  }
}
