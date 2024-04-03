import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/utils/colors.dart';

class SurroundMarket extends StatelessWidget {
  const SurroundMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 214,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "내 주변 친환경 마트",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Pretendard',
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SurroundMarketButton(
                  storeName: "초록마을",
                  storeLocation: "서울 광진구 뚝섬로 522 심희빌딩",
                ),
                SizedBox(
                  width: 12,
                ),
                SurroundMarketButton(
                  storeName: "초록마을",
                  storeLocation: "서울 광진구 뚝섬로 522 심희빌딩",
                ),
                SizedBox(
                  width: 12,
                ),
                SurroundMarketButton(
                  storeName: "초록마을",
                  storeLocation: "서울 광진구 뚝섬로 522 심희빌딩",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SurroundMarketButton extends StatelessWidget {
  const SurroundMarketButton({
    super.key,
    required this.storeName,
    required this.storeLocation,
  });
  final String storeName;
  final String storeLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      width: 293,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.fromBorderSide(
          BorderSide(
            color: buttonBorderColor,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/images/home/ex1.svg,"),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(storeName),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(storeLocation),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
