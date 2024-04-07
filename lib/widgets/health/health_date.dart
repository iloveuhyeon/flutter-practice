import 'package:flutter/material.dart';
import 'package:practice/utils/date.dart';

class HealthDate extends StatelessWidget {
  const HealthDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$year년 $month월 $weekofMonth주차 ",
        style: const TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(90, 90, 92, 1),
        ),
      ),
    );
  }
}
