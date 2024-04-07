import 'package:flutter/material.dart';
import 'package:practice/utils/date.dart';

class TopBarDate extends StatelessWidget {
  TopBarDate({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 73,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$year년 $month월 $day일",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: 'Pretendard',
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
              fontFamily: 'Pretendard',
            ),
          )
        ],
      ),
    );
  }
}
