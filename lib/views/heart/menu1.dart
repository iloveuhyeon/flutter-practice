import 'package:flutter/material.dart';
import 'package:practice/widgets/heart/heart_icon.dart';

class Menu1 extends StatelessWidget {
  const Menu1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeartIcon(),
      ],
    );
  }
}
