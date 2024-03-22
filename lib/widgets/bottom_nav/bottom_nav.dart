import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexNum = 0;

  @override
  void initState() {
    indexNum = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexNum,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xff171717),
      selectedFontSize: 12,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      unselectedItemColor: const Color(0xffb4b5b7),
      unselectedFontSize: 12,
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: const Color(0xfff8f8f9),
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "건강"),
        BottomNavigationBarItem(icon: Icon(Icons.boy_outlined), label: "챗봇"),
        BottomNavigationBarItem(icon: Icon(Icons.sunny), label: "마음"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "마이페이지")
      ],
      onTap: (value) => setState(
        () => indexNum = value,
      ),
    );
  }
}
