import 'package:flutter/material.dart';
import 'package:practice/widgets/topbar/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(text: "이주영님!"),
            TopBarDate(text: "이앱잼님을 위해 이런 서비스를 준비했어요")
          ],
        ),
      ),
    );
  }
}
