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
        return Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(64),
                child: Text(
                  '共通ウィジェットを API として、洗練させることの重要性',
                  style: textTheme.headlineMedium!.copyWith(
                    color: themeData.colorScheme.primary,
                  ),
                ),
              ),
            ),
            Padding(
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
                        'sometimes explaining why an API isn\'t optimal is a very difficult and subtle task'
                      ],
                      bulletPointWidget: const SizedBox(
                        height: 64,
                        child: VerticalDivider(thickness: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
