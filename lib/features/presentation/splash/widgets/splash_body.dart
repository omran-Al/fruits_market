import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/features/presentation/on%20Boarding/on_bording.dart';
import 'package:fruits_market/gen/assets.gen.dart';
// import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? _animatedContainer;
  Animation<double>? fading;

  @override
  void initState() {
    super.initState();
    _animatedContainer = AnimationController(
        vsync: this, duration: const Duration(microseconds: 10000));
    fading = Tween<double>(begin: .2, end: 1).animate(_animatedContainer!);

    //solve 1
    // ..addListener(() {
    //   setState(() {
    //     if (_animatedContainer!.isCompleted) {
    //       _animatedContainer!.repeat(reverse: true);
    //     }
    //   });
    // });
    //solve 2
    _animatedContainer!.repeat(reverse: true);
    _getNextPage();
    // _animatedContainer?.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animatedContainer!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Spacer(),
          //slove  1
          // Opacity(
          //   opacity: fading!.value,
          //   child: Text(
          //     textBody,
          //     style: TextStyle(
          //       fontFamily: Assets.fonts.poppinsRegular,
          //       fontSize: 51,
          //       fontWeight: FontWeight.bold,
          //       color: const Color(0xffffffff),
          //     ),
          //   ),
          // ),
          //solve 2
          // AnimatedBuilder(
          //   animation: fading!,
          //   builder: (context, _) => Opacity(
          //     opacity: fading!.value,
          //     child: Text(
          //       textBody,
          //       style: TextStyle(
          //         fontFamily: Assets.fonts.poppinsRegular,
          //         fontSize: 51,
          //         fontWeight: FontWeight.bold,
          //         color: const Color(0xffffffff),
          //       ),
          //     ),
          //   ),
          // ),

          FadeTransition(
            opacity: fading!,
            child: Text(
              textBody,
              style: TextStyle(
                fontFamily: Assets.fonts.poppinsRegular,
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Image.asset(
            Assets.images.splash.path,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  void _getNextPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const OnBordingScreen()));
    });
  }
}
