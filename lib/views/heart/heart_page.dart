import 'package:flutter/material.dart';
import 'package:practice/widgets/topbar/topbar.dart';

class HeartPage extends StatelessWidget {
  const HeartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(text: "당신의 마음이 항상 빛나길"),
            ],
          ),
        ),
      ),
    );
  }
}
