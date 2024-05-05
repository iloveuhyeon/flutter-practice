import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/utils/asset.dart';
import 'package:practice/utils/page.dart';

class BottomNav extends StatelessWidget {
  BottomNav({
    super.key,
    required this.onPageIndex,
  });
  Function(int index) onPageIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavProperty(
                src: "house.svg",
                text: "홈",
                isSelected: pageindex == 0,
                tap: () => onPageIndex(0)),
            NavProperty(
              src: "health.svg",
              text: "건강",
              isSelected: pageindex == 1,
              tap: () => onPageIndex(1),
            ),
            // ChatBot(
            //     src: "chatbot.svg",
            //     text: "챗봇",
            //     isSelected: pageindex == 2,
            //     tap: () => onPageIndex(2)),
            NavProperty(
              src: "light-up.svg",
              text: "마음",
              isSelected: pageindex == 3,
              tap: () => onPageIndex(3),
            ),
            NavProperty(
              src: "person.svg",
              text: "마이페이지",
              isSelected: pageindex == 4,
              tap: () => onPageIndex(4),
            ),
          ],
        ),
      ),
    );
  }
}

class NavProperty extends StatefulWidget {
  const NavProperty(
      {super.key,
      required this.src,
      required this.text,
      required this.isSelected,
      required this.tap});
  final String src;
  final String text;
  final bool isSelected;
  final VoidCallback tap;

  @override
  State<NavProperty> createState() => _NavPropertyState();
}

class _NavPropertyState extends State<NavProperty> {
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
                color:
                    widget.isSelected ? Colors.black : const Color(0xffb4b5b7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBot extends StatefulWidget {
  const ChatBot(
      {super.key,
      required this.src,
      required this.text,
      required this.isSelected,
      required this.tap});
  final String src;
  final String text;
  final bool isSelected;
  final VoidCallback tap;

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tap,
      child: SizedBox(
        height: 80,
        width: 78,
        child: Column(
          children: [
            SvgPicture.asset(
              widget.isSelected ? focusNav + widget.src : nav + widget.src,
              height: widget.isSelected ? 54 : 48,
              width: widget.isSelected ? 54 : 48,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color:
                    widget.isSelected ? Colors.black : const Color(0xffb4b5b7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
