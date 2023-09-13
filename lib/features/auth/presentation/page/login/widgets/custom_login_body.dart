import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/spece_widget.dart';
import 'package:fruits_market/features/auth/presentation/page/complete_information/complete_information_view.dart';
import 'package:fruits_market/gen/assets.gen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBodyLogIn extends StatelessWidget {
  const CustomBodyLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalSize(value: 10),
          Image.asset(Assets.images.logo.path),
          const Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                color: Color(0xff69a03a),
              ),
              children: [
                TextSpan(
                  text: 'F',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'ruit Market',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Row(
            children: [
              const Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    color: Color(0xFFdb3236),
                    iconData: FontAwesomeIcons.googlePlusG,
                    text: 'Log in with ',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const CompleteInformationView(),
                        ),
                      );
                    },
                    color: const Color(0xFF4267B2),
                    iconData: FontAwesomeIcons.facebookF,
                    text: 'Log in with ',
                  ),
                ),
              )
            ],
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
