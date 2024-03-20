import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/models/test_user_models.dart';
import 'package:practice/views/login/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String id = "";
  String pw = "";

  @override
  void initState() {
    id = TestUserModel.userInfo.id;
    pw = TestUserModel.userInfo.pw;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
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
            ElevatedButton(
              onPressed: () => context.go("/login"),
              child: const Text("logout"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "ID : ${TestUserModel.userInfo.id}",
                  ),
                  Text(
                    "PW : ${TestUserModel.userInfo.pw}",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
