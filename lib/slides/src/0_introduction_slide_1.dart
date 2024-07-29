import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Introduction1Slide extends FlutterDeckSlideWidget {
  Introduction1Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/0_introduction_slide_1',
            title: 'イントロ',
            header: FlutterDeckHeaderConfiguration(
              title: 'なぜパクるのか',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter スタイルガイドより',
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 32),
              Flexible(
                child: FlutterDeckBulletList(
                  items: const [
                    'The primary goal of these style guidelines is to improve code readability so that everyone, whether reading the code for the first time or maintaining it for years, can quickly determine what the code does. ',
                  ],
                  bulletPointWidget: const SizedBox(
                    height: 60,
                    child: VerticalDivider(thickness: 8),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
