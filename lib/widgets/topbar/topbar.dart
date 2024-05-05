import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/utils/index.dart';

class TopBar extends StatefulWidget {
  TopBar({super.key, required this.text});
  String text;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool isAlert = alert == 0 ? false : true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'EliceDXNeolliOTFbold',
              fontSize: 16,
            ),
          ),
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/images/topbars/bell.svg",
                  height: 24,
                  width: 24,
                ),
                if (isAlert)
                  Positioned(
                    left: 13,
                    top: 1,
                    child: Container(
                      alignment: Alignment.center,
                      width: 8,
                      height: 8,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF2870FB),
                        shape: OvalBorder(),
                      ),
                      child: Text(
                        '$alert',
                        style: const TextStyle(
                          fontSize: 6,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
