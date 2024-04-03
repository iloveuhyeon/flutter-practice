import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  TopBar({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'EliceDXNeolliOTFbold',
              fontSize: 16,
            ),
          ),
          SvgPicture.asset(
            "assets/images/topbars/bell.svg",
            height: 24,
            width: 24,
          )
        ],
      ),
    );
  }
}
