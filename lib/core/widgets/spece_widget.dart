import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class HorizintalSize extends StatelessWidget {
  final double? value;

  const HorizintalSize({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSize extends StatelessWidget {
  final double? value;

  const VerticalSize({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
