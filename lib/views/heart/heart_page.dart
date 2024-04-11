import 'package:flutter/material.dart';
import 'package:practice/utils/index.dart';
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
            children: [
              TopBar(text: "당신의 마음이 항상 빛나길"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  HeartButton(
                    text: '마음',
                    width: 28,
                    index: 0,
                    isSelected: heartButtonIndex == 0,
                    onPressed: () {
                      setState(() {
                        heartButtonIndex = 0;
                      });
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
                      setState(() {
                        heartButtonIndex = 1;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeartButton extends StatelessWidget {
  const HeartButton({
    super.key,
    required this.text,
    required this.width,
    required this.index,
    required this.isSelected,
    required this.onPressed,
  });

  final String text;
  final double width;
  final int index;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? const Color.fromRGBO(40, 112, 251, 1)
                  : const Color.fromRGBO(61, 61, 62, 1),
            ),
          ),
        ),
        if (isSelected)
          Container(
            height: 3,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
              color: const Color.fromRGBO(40, 112, 251, 1),
            ),
          ),
      ],
    );
  }
}
