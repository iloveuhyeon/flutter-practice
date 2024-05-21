import 'package:flutter/material.dart';
import 'package:practice/utils/text.dart';
import 'package:practice/widgets/home/shortcut_button.dart';
import 'package:practice/widgets/my_page/coupon.dart';
import 'package:practice/widgets/my_page/profile.dart';
import 'package:practice/widgets/topbar/topbar.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(text: "마이페이지"),
              Profile(name: name),
              const SizedBox(
                height: 12,
              ),
              const Coupon(),
              const SizedBox(
                height: 12,
              ),
              const ShortcutButton(
                  firstText: '쿠폰 교환하러 가기', secondText: '쿠폰으로 건강을 얻어가세요!')
            ],
          ),
        ),
      ),
    );
  }
}
