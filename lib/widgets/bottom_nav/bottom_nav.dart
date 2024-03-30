import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/views/main_page/main_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 66,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavProperty(
              src: "house.svg",
              text: "홈",
              index: 0,
              isSelected: pageindex == 0,
              tap: () => setState(
                () {
                  pageindex = 0;
                },
              ),
            ),
            NavProperty(
              src: "health.svg",
              text: "건강",
              index: 1,
              isSelected: pageindex == 1,
              tap: () => setState(
                () {
                  pageindex = 1;
                },
              ),
            ),
            NavProperty(
              src: "light-up.svg",
              text: "마음",
              index: 2,
              isSelected: pageindex == 2,
              tap: () => setState(
                () {
                  pageindex = 2;
                },
              ),
            ),
            NavProperty(
              src: "person.svg",
              text: "마이페이지",
              index: 3,
              isSelected: pageindex == 3,
              tap: () => setState(
                () {
                  pageindex = 3;
                },
              ),
            ),
          ],
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
    required this.isSelected,
  });
  final String src;
  final String text;
  final int index;
  final bool isSelected;
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
              widget.isSelected ? focusNav + widget.src : nav + widget.src,
              height: 24,
              width: 24,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: widget.isSelected == widget.index
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
