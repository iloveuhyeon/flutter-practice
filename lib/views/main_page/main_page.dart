import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: page[pageindex],
      bottomNavigationBar: BottomNav(
        onPageIndex: (index) => setState(
          () {
            pageindex = index;
          },
        ),
      ),
    );
  }
}
