import 'package:flutter/material.dart';
import 'package:practice/widgets/my_page/profile.dart';
import 'package:practice/widgets/topbar/topbar.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(text: "마이페이지"),
              const Profile(),
            ],
          ),
        ),
      ),
    );
  }
}
