import 'package:flutter/material.dart';
import 'package:practice/widgets/heart/heart_icon.dart';

class Menu1 extends StatelessWidget {
  const Menu1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const Row(
            children: [
              HeartIcon(
                  firstColor: Color.fromRGBO(132, 23, 22, 1),
                  secondColor: Color.fromRGBO(218, 37, 36, 1),
                  icon: Icons.heart_broken,
                  text: "외로움"),
              SizedBox(
                width: 12,
              ),
              HeartIcon(
                  firstColor: Color.fromRGBO(22, 62, 138, 1),
                  secondColor: Color.fromRGBO(36, 102, 228, 1),
                  icon: Icons.water_drop_rounded,
                  text: "지침"),
              SizedBox(
                width: 12,
              ),
              HeartIcon(
                  firstColor: Color.fromRGBO(133, 49, 13, 1),
                  secondColor: Color.fromRGBO(220, 81, 22, 1),
                  icon: Icons.badge_rounded,
                  text: "상처"),
            ],
          ),
        ),
      ],
    );
  }
}
