import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/images/bottom_nav/person.svg",
            ),
          ),
          const Text("hello world"),
        ],
      ),
    );
  }
}
