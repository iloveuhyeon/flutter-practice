import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 53,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(132, 23, 22, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(
            16,
          ),
        ),
      ),
      child: const Icon(
        Icons.heart_broken,
        color: Color.fromRGBO(218, 37, 36, 1),
      ),
    );
  }
}
