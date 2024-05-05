import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/utils/page.dart';
import 'package:practice/widgets/heart/heart_button.dart';
import 'package:practice/widgets/topbar/topbar.dart';

class HeartPage extends StatefulWidget {
  const HeartPage({super.key});

  @override
  State<HeartPage> createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(text: "당신의 마음이 항상 빛나길"),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeartButton(
                      text: '마음',
                      width: 28,
                      index: 0,
                      isSelected: heartButtonIndex == 0,
                      onPressed: () {
                        setState(
                          () {
                            heartButtonIndex = 0;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    HeartButton(
                      text: '고민 털어놓기',
                      width: 87,
                      index: 1,
                      isSelected: heartButtonIndex == 1,
                      onPressed: () {
                        setState(
                          () {
                            heartButtonIndex = 1;
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              heartButtonPage[heartButtonIndex],
            ],
          ),
        ),
      ),
    );
  }
}
