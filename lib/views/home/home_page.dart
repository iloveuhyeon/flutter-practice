import 'package:flutter/material.dart';
import 'package:practice/widgets/bottom_nav/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("center"),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
