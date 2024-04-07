import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/utils/index.dart';

class Coupon extends StatelessWidget {
  const Coupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(248, 248, 249, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(
            16,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '내가 모은 쿠폰',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Pretendard',
                  ),
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: Color.fromRGBO(165, 166, 169, 1),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  '$couponIndex',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Pretendard',
                    color: Color.fromRGBO(40, 112, 251, 1),
                  ),
                ),
                const Text(
                  "/10",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Pretendard',
                    color: Color.fromRGBO(180, 181, 183, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const CouponImage()
          ],
        ),
      ),
    );
  }
}

class CouponImage extends StatelessWidget {
  const CouponImage({super.key});
  final String src = 'assets/images/my_page/';

  @override
  Widget build(BuildContext context) {
    if (couponIndex > 5) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < 5; i++) SvgPicture.asset('${src}coupon.svg'),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < couponIndex - 5; i++)
                SvgPicture.asset('${src}coupon.svg'),
              for (int j = 0; j < 5 - (couponIndex - 5); j++)
                SvgPicture.asset('${src}coupon_none.svg'),
            ],
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < couponIndex; i++)
                SvgPicture.asset('${src}coupon.svg'),
              for (int j = 0; j < 5 - couponIndex; j++)
                SvgPicture.asset('${src}coupon_none.svg'),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < 5; i++)
                SvgPicture.asset('${src}coupon_none.svg'),
            ],
          )
        ],
      );
    }
  }
}
