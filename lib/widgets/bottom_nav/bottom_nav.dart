import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        height: 66,
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/bottom_nav/house.svg",
              height: 42,
              width: 78,
            ),
            SvgPicture.asset(
              "assets/images/bottom_nav/health.svg",
              height: 42,
              width: 78,
            ),
            Container(
              height: 42,
              width: 78,
              color: Colors.white,
              child: const Column(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                  ),
                  Text(
                    "챗봇",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              "assets/images/bottom_nav/light-up.svg",
              height: 42,
              width: 78,
            ),
            SvgPicture.asset(
              "assets/images/bottom_nav/person.svg",
              height: 42,
              width: 78,
            )
          ],
        ),
      ),
    );
  }
}
