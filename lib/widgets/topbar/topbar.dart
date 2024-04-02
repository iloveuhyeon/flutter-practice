import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  TopBar({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'EliceDXNeolliOTFbold',
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
    );
  }
}

class TopBarDate extends StatelessWidget {
  TopBarDate({super.key, required this.text});
  String text;
  DateTime dt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      height: 73,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${dt.year}년 ${dt.month}월 ${dt.day}일",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xffa5a6a9),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
