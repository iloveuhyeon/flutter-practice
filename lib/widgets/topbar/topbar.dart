import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  TopBar({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SvgPicture.asset(
              "assets/images/topbar/bell.svg",
              height: 24,
              width: 24,
            )
          ],
        ),
      ),
    );
  }
}
