import 'package:flutter/material.dart';
import 'package:quizapp/login/login.dart';
import 'package:quizapp/topics/topics.dart';
import 'package:quizapp/services/auth.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading'),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('error'),
          );
        } else if (snapshot.hasData) {
          return const Topics();
        } else {
          return Login();
        }
      },
    );
  }
}
