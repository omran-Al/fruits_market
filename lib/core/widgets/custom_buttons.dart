import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/spece_widget.dart';
import 'package:fruits_market/gen/assets.gen.dart';

class GeneralButton extends StatelessWidget {
  final String text;

  final VoidCallback? press;

  const GeneralButton({
    super.key,
    required this.text,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kMainColor,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  fontFamily: Assets.fonts.poppinsRegular,
                ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key, required this.text, this.onTap, this.iconData, this.color})
      : super(key: key);
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFF707070),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const HorizintalSize(value: 2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: Assets.fonts.poppinsRegular,
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
