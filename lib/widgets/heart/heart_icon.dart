import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({
    super.key,
    required this.firstColor,
    required this.secondColor,
    required this.icon,
    required this.text,
  });

  final Color firstColor;
  final Color secondColor;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 53,
          width: 53,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: firstColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
          ),
          child: Icon(
            icon,
            color: secondColor,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Pretendard"),
        ),
      ],
    );
  }
}
