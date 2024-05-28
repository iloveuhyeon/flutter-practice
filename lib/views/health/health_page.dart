import 'package:flutter/material.dart';
import 'package:practice/widgets/health/health_date.dart';
import 'package:practice/widgets/home/surround_market.dart';
import 'package:practice/widgets/topbar/topbar.dart';
import 'package:practice/widgets/topbar/topbardate.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(text: "영양 관리"),
              TopBarDate(text: "이주영님의 영양 상태"),
              HealthDate(),
              SizedBox(
                height: 28,
              ),
              SurroundMarket(),
            ],
          ),
        ),
      ),
    );
  }
}
