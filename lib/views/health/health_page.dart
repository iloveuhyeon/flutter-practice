import 'package:flutter/material.dart';
import 'package:practice/widgets/home/surround_market.dart';
import 'package:practice/widgets/topbar/topbar.dart';
import 'package:practice/widgets/topbar/topbardate.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  int getWeekOfMonth(int year, int month, int day) {
    DateTime date = DateTime(year, month, day);

    DateTime firstDayOfMonth = DateTime(year, month, 1);
    int firstDayOfWeek = firstDayOfMonth.weekday;
    int weekOfMonth = ((day + firstDayOfWeek - 1) / 7).ceil();

    return weekOfMonth;
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(text: "영양 관리"),
              TopBarDate(text: "이주영님의 영양 상태"),
              Container(
                child: Text(
                  "${date.year}년 ${date.month}월 ${getWeekOfMonth(date.year, date.month, date.day)}주차 ",
                  style: const TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(90, 90, 92, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const SurroundMarket(),
            ],
          ),
        ),
      ),
    );
  }
}
