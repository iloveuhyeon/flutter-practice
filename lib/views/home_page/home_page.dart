import 'package:flutter/material.dart';
import 'package:practice/utils/text.dart';
import 'package:practice/widgets/home/home_button.dart';
import 'package:practice/widgets/home/surround_market.dart';
import 'package:practice/widgets/topbar/topbar.dart';
import 'package:practice/widgets/topbar/topbardate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(text: '$name님'),
              TopBarDate(text: "이앱잼님을 위해 이런 서비스를 준비했어요"),
              const SizedBox(height: 16),
              const HomeButton(
                firstText: "나를 위한 지원 알아보러가기",
                secondText: "나를 위한 지원 사업 알아보고 지원금 받자!",
              ),
              const SizedBox(height: 12),
              const HomeButton(
                firstText: "내 건강을 위해 식단 체크해보기",
                secondText: "식단을 기록하고 돌아보고 건강도 챙기자!",
              ),
              const SizedBox(height: 12),
              const HomeButton(
                firstText: "지친 내마음, 달래줄 곳이 필요하다면?",
                secondText: "무거운 이야기들, 챗봇에게 털어놓자",
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
