import 'package:flutter/material.dart';
import 'package:fruits_market/features/presentation/on%20Boarding/widgets/page_view_items.dart';
import 'package:fruits_market/gen/assets.gen.dart';

class CustomPageViewScreen extends StatelessWidget {
  final PageController? pageController;
  const CustomPageViewScreen({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItems(
          imageUrl: Assets.images.onboarding1.path,
          title: "Welcon One Screen",
          sunTitle: "pr'l;'zx",
        ),
        PageViewItems(
          imageUrl: Assets.images.onboarding2.path,
          title: "Welcon One Screen",
          sunTitle: "pr'l;'zx",
        ),
        PageViewItems(
          imageUrl: Assets.images.onboarding3.path,
          title: "Welcon One Screen",
          sunTitle: "pr'l;'zx",
        ),
      ],
    );
  }
}
