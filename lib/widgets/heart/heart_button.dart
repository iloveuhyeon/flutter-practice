import 'package:flutter/material.dart';

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
