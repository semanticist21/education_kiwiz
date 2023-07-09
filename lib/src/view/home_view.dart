import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('로그인 완료..!\n${FirebaseAuth.instance.currentUser!.email!}'),
            ElevatedButton(
                onPressed: () => FirebaseAuth.instance.signOut(),
                child: Text('logout'))
          ],
        ),
      ),
    );
  }
}
