import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/models/test_user_models.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text("login page"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _idController,
                      decoration: const InputDecoration(
                        labelText: "ID",
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      controller: _pwController,
                      decoration: const InputDecoration(
                        labelText: "PW",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TestUserModel.userInfo = TestUserModel(
                          _idController.text,
                          _pwController.text,
                        );
                        print(_idController.text);
                        // 페이지 이동 전에 user 변수 초기화가 이루어지도록 위치 변경
                        context.go("/");
                      },
                      child: const Text("전송"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
