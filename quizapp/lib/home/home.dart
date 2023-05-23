import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            'about',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: () => Navigator.pushNamed(context, '/topics'),
        ),
      ),
    );
  }
}
