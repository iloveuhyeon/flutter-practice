import 'package:flutter/material.dart';
import 'package:practice/widgets/home/home_button.dart';
import 'package:practice/widgets/home/surround_market.dart';
import 'package:practice/widgets/topbar/topbar.dart';
import 'package:practice/widgets/topbar/topbardate.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(text: "영양 관리"),
              TopBarDate(text: "이주영님의 영양 상태"),
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
