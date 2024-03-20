import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text("body"),
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text("login"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/signUp');
              },
              child: const Text("signUp"),
            ),
            ElevatedButton(
              onPressed: () => context.go("/setting"),
              child: const Text("setting"),
            )
          ],
        ),
      ),
    );
  }
}
