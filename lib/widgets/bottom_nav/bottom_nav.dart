import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/views/main_page/main_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    var navList = [
      NavProperty(
          src: "house.svg",
          text: "홈",
          index: 0,
          tap: () => MainPage().pageindex = 0),
      NavProperty(
          src: "health.svg",
          text: "건강",
          index: 1,
          tap: () => MainPage().pageindex = 1),
      NavProperty(
          src: "light-up.svg",
          text: "마음",
          index: 2,
          tap: () => MainPage().pageindex = 2),
      NavProperty(
          src: "person.svg",
          text: "마이페이지",
          index: 3,
          tap: () => MainPage().pageindex = 3),
    ];
    return SafeArea(
      child: SizedBox(
        height: 66,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navList,
        ),
      ),
    );
  }
}

class NavProperty extends StatefulWidget {
  const NavProperty({
    super.key,
    required this.src,
    required this.text,
    required this.tap,
    required this.index,
  });
  final String src;
  final String text;
  final int index;
  final Function() tap;

  @override
  State<NavProperty> createState() => _NavPropertyState();
}

class _NavPropertyState extends State<NavProperty> {
  final String nav = "assets/images/bottom_nav/";
  final String focusNav = "assets/images/bottom_nav_property/";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tap,
      child: SizedBox(
        height: 42,
        width: 78,
        child: Column(
          children: [
            SvgPicture.asset(
              MainPage().pageindex == widget.index
                  ? focusNav + widget.src
                  : nav + widget.src,
              height: 24,
              width: 24,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: MainPage().pageindex == widget.index
                    ? Colors.black
                    : const Color(0xffb4b5b7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
