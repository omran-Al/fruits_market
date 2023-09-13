import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';

class CustomIndicators extends StatelessWidget {
  final double? dotIndex;

  const CustomIndicators({super.key, required this.dotIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!.toInt(),
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
          side: const BorderSide(color: kMainColor),
        ),
      ),
    );
  }
}
