import 'package:flutter/material.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff8f8f9),
      body: Text("hell"),
      bottomNavigationBar: BottomNav(),
    );
  }
}
