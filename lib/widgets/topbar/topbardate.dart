import 'package:flutter/material.dart';

class TopBarDate extends StatelessWidget {
  TopBarDate({super.key, required this.text});
  String text;
  DateTime dt = DateTime.now();
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
            "${dt.year}년 ${dt.month}월 ${dt.day}일",
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
