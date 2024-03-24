import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String bottomNavProperty = 'bottom_nav_property';
  final String bottomNav = 'bottom_nav';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/$bottomNavProperty/house.svg",
                ),
                SvgPicture.asset(
                  "assets/images/$bottomNav/health.svg",
                ),
                SvgPicture.asset(
                  "assets/images/$bottomNav/house.svg",
                ),
                SvgPicture.asset(
                  "assets/images/$bottomNav/light-up.svg",
                ),
                SvgPicture.asset(
                  "assets/images/$bottomNav/person.svg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
