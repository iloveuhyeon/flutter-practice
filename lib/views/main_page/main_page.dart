import 'package:flutter/material.dart';
import 'package:practice/views/health/health_page.dart';
import 'package:practice/views/heart/heart_page.dart';
import 'package:practice/views/home_page/home_page.dart';
import 'package:practice/views/my_page/my_page.dart';
import 'package:practice/views/splash/splash_page.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final page = [
    const HomePage(),
    const MyPage(),
    const SplashPage(),
    const HeartPage(),
    const HealthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    const bottomNavState = BottomNav;

    return Scaffold(
      appBar: AppBar(),
      body: page[/*여기에 bottomnav에 있는 pageindex값이 들어가야함 */],
      bottomNavigationBar: const BottomNav(),
    );
  }
}
