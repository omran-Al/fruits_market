import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/spece_widget.dart';
import 'package:fruits_market/gen/assets.gen.dart';
// import 'package:fruits_market/gen/assets.gen.dart';

class PageViewItems extends StatelessWidget {
  final String title;
  final String sunTitle;
  final String imageUrl;

  const PageViewItems(
      {super.key,
      required this.title,
      required this.sunTitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const VerticalSize(value: 15),
        SizedBox(
            height: SizeConfig.defaultSize! * 25, child: Image.asset(imageUrl)),
        const VerticalSize(value: 2),
        Text(
          title,
          style: TextStyle(
            fontFamily: Assets.fonts.poppinsRegular,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const VerticalSize(value: 1),
        Text(
          sunTitle,
          style: TextStyle(
              fontFamily: Assets.fonts.poppinsRegular,
              fontSize: 15,
              //fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ],
    );
  }
}
