import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/models/test_user_models.dart';

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
                context.go('/home');
              },
              child: const Text("/home"),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ID${TestUserModel.userInfo.id.toString()}",
              ),
            )
          ],
        ),
      ),
    );
  }
}
