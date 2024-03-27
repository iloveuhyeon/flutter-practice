import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 66,
        child: Row(
          children: [
            SizedBox(
              height: 42,
              width: 78,
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/bottom_nav/house.svg",
                    height: 24,
                    width: 24,
                  ),
                  const Text(
                    "홈",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffb4b5b7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42,
              width: 78,
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/bottom_nav/health.svg",
                  ),
                  const Text(
                    "건강",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffb4b5b7),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 42,
              width: 78,
              child: Column(
                children: [
                  SvgPicture.asset("assets/images/bottom_nav/chatbot.svg"),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "챗봇",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffb4b5b7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42,
              width: 78,
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/bottom_nav/light-up.svg",
                  ),
                  const Text(
                    "마음",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffb4b5b7),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 42,
              width: 78,
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/bottom_nav/person.svg",
                  ),
                  const Text(
                    "마이페이지",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffb4b5b7),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
