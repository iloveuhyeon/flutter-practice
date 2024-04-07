import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/utils/colors.dart';
import 'package:practice/utils/page.dart';

class SurroundMarket extends StatelessWidget {
  const SurroundMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 230,
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
      height: 190,
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
              SvgPicture.asset('assets/images/homes/market.svg'),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    storeName,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Pretendard'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    storeLocation,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Pretendard',
                      color: marketGrey,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              Label(textIndex: 0),
              Label(textIndex: 1),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            child: Divider(
              height: 1,
              color: Color.fromRGBO(239, 240, 242, 1),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\"$storeName\"의 매장 정보 더 보기",
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  color: Color.fromRGBO(40, 112, 251, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 11.5),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
                weight: 5,
                color: Color.fromRGBO(40, 112, 251, 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label({super.key, required this.textIndex});
  final int textIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 56,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(234, 241, 255, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            border: Border.fromBorderSide(
              BorderSide(
                color: Color.fromRGBO(188, 211, 254, 1),
              ),
            ),
          ),
          child: Text(
            labelText[textIndex],
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(40, 112, 251, 1),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
