import 'package:flutter/material.dart';
import 'package:practice/utils/utils.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: page[pageindex],
      bottomNavigationBar: const BottomNav(),
    );
  }
}
