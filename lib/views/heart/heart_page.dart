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
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    HeartButton(
                      text: "마음",
                    ),
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

class HeartButton extends StatelessWidget {
  HeartButton({super.key, required this.text});
  final String text;
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      height: 34,
      child: Column(
        children: [
          Text(text),
          Container(
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ],
      ),
    );
  }
}
