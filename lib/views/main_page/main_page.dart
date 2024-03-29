import 'package:flutter/material.dart';
import 'package:practice/views/health/health_page.dart';
import 'package:practice/views/heart/heart_page.dart';
import 'package:practice/views/home_page/home_page.dart';
import 'package:practice/views/my_page/my_page.dart';
import 'package:practice/views/splash/splash_page.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  int pageindex = 0;
  final page = [
    const HomePage(),
    const MyPage(),
    const SplashPage(),
    const HeartPage(),
    const HealthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: page[pageindex],
      bottomNavigationBar: BottomNav(),
    );
  }
}
