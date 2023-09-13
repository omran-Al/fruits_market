import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/features/auth/presentation/page/login/login_screen.dart';
import 'package:fruits_market/features/presentation/on%20Boarding/widgets/custom_indicator.dart';
import 'package:fruits_market/features/presentation/on%20Boarding/widgets/custom_page_view.dart';
import 'package:fruits_market/gen/assets.gen.dart';
// import 'package:dots_indicator/dots_indicator.dart';

class OnBordeingBody extends StatefulWidget {
  const OnBordeingBody({super.key});

  @override
  State<OnBordeingBody> createState() => _OnBordeingBodyState();
}

class _OnBordeingBodyState extends State<OnBordeingBody> {
  PageController? pageController;
  int index = 0;

  @override
  void initState() {
    pageController = PageController(
      initialPage: index,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Stack(
      children: [
        CustomPageViewScreen(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 25,
          left: 0,
          right: 0,
          child: CustomIndicators(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
            // dotIndex: 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page!.toInt() != 2 ? true : false)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 3,
            right: 25,
            child: Text(
              skip,
              style: Theme.of(context).textTheme.titleMedium!.apply(
                    fontFamily: Assets.fonts.poppinsRegular,
                    fontSizeFactor: 1,
                  ),
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          child: GeneralButton(
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? "Get Stated" : next)
                : next,
            press: () => getToNextPage(),
          ),
        ),
      ],
    );
  }

  void getToNextPage() {
    setState(() {
      if (index < 2) {
        setState(() {
          ++index;
          pageController!.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
          );
        });
      } else {
        setState(() {
          // index = 0;
          // pageController!.jumpToPage(index);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
        });
      }
    });
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }
}
