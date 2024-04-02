import 'package:flutter/material.dart';
import 'package:practice/widgets/topbar/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(
            text: "이주영님!",
          )
        ],
      ),
    );
  }
}
