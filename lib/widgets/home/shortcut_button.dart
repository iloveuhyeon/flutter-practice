import 'package:flutter/material.dart';
import 'package:practice/utils/colors.dart';

class ShortcutButton extends StatelessWidget {
  const ShortcutButton({
    super.key,
    required this.firstText,
    required this.secondText,
  });
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 92,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            16,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                firstText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Pretendard',
                ),
              ),
              const Icon(
                Icons.arrow_forward_rounded,
              )
            ],
          ),
          Container(
            height: 8,
          ),
          Text(
            secondText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Pretendard',
              color: grey,
            ),
          )
        ],
      ),
    );
  }
}
